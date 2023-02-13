const url = require('url')
const express = require('express')
const router = express.Router()
const needle = require('needle')
const apicache = require('apicache')

// Env vars
const API_BASE_URL = process.env.API_BASE_URL
const API_KEY_NAME = process.env.API_KEY_NAME
const API_KEY_VALUE = process.env.API_KEY_VALUE

// Init cache
let cache = apicache.middleware
// cache('2 minutes')

router.get('/', cache('2 minutes'), async (req, res, next) => {
  try {
    const params = new URLSearchParams({
      [API_KEY_NAME]: API_KEY_VALUE,
      ...url.parse(req.url, true).query,
    })

    const apiRes = await needle('get', `${API_BASE_URL}weather?${params}`)
    const data = apiRes.body

    // Log the request to the public API
    if (process.env.NODE_ENV !== 'production') {
      console.log(`REQUEST: ${API_BASE_URL}?${params}`, data); 
    }

    res.status(200).json(data)
  } catch (error) {
    next(error)
  }
})

//current location
router.get('/location', cache('2 minutes'), async(req, res, next) => {
  try {  
    // if(!req.query.lat || !req.query.long) {
    //   res.status(400).json({
    //     status: 400,
    //     message: "Please include longitude and latitude"
    //   })
    //   return
    // }

    const params = `lat=17.1899&lon=88.4976&appid=${API_KEY_VALUE}`
    const apiRes = await needle('get', `${API_BASE_URL}weather?${params}`)
    const data = apiRes.body; 
    console.log(data);
    res.status(200).json(data)
  } catch (error) {
    next(error);
  }
});

router.get('/forecast',  cache('2 minutes'), async (req, res, next) => { 
    const date = new Date().getTime();
    try { 
      const sevenDayForecast = await needle('get', `${API_BASE_URL}onecall?lat=17.1899&lon=-88.4976&appid=${API_KEY_VALUE}`)
      const forecastDaily = await needle('get',`https://wimp.nms.gov.bz/api/forecast_daily/read.php?_${date}` );
      const forecastGeneral = await needle('get', `https://wimp.nms.gov.bz/api/forecast_general/read.php?_${date}`);
      const forecastMarine = await needle('get', `https://wimp.nms.gov.bz/api/forecast_marine/read.php?t=${date}`);
      const allForecast = await Promise.all([await forecastDaily, await forecastGeneral, await forecastMarine, await sevenDayForecast]);
      const [ daily, general, marine, weekly ] = allForecast.map(async (data) => await data.body);
      return await res.status(200).json({daily: await daily, general: await general, marine: await marine, weekly: await weekly});  
  } catch (error) {
    next(error)
  }
});


router.get('/forecastareas', cache('2 minutes'), async (req, res, next) => {
  try {
    const date = new Date().getTime(); 
    const apiRes = await needle('get', `https://wimp.nms.gov.bz/api/forecast_areas/read.php?_=${date}`);
    const data = apiRes.body;
    return res.status(200).json(data);
  } catch (error) {
    
  }
})

// let photoLoc =  `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${position.coords.latitude},${position.coords.longitude}&radius=100&type=&keyword=&key=AIzaSyDuwOeDAoF86o2my6MBAjvV9N1-A_7gH3Q`;

router.get('/geopicture', cache('2 minutes'), async (req, res, next) => {
  const { lat, long } = req.query;
  try {
    const photoApi = `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${lat},${long}&radius=100&type=&keyword=&key=${process.env.GOOGLE_API_KEY}`;
    const photoResponse = await needle('get', photoApi);
    const result = photoResponse.body.results; 
    const cleanedResults = result.filter(photo => photo.photos != null)
    const photos = cleanedResults.map(photo => photo.photos[0].photo_reference);
    const photoUrls = photos.map(photoReference => `https://maps.googleapis.com/maps/api/place/photo?maxwidth=700&photoreference=${photoReference}&key=${process.env.GOOGLE_API_KEY}` )
    return await res.status(200).json({photoUrls})
  } catch (error) {
    console.log(error)
    return res.status(400).json({error: error })
  }
})

module.exports = router