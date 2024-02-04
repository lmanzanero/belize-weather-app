const url = require('url')
const express = require('express')
const router = express.Router()
const needle = require('needle')
const apicache = require('apicache')
const WeatherGraphs = require('./views/WeatherGraphs')
const WeatherChart = require('./views/WeatherChart')

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
      return res.status(200).json({daily: await daily, general: await general, marine: await marine, weekly: await weekly});  
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
});

router.get('/geopicture', cache('2 minutes'), async (req, res, next) => {
  const { lat, long } = req.query;
  try {
    const photoApi = `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${lat},${long}&radius=100&type=&keyword=&key=${process.env.GOOGLE_API_KEY}`;
    const photoResponse = await needle('get', photoApi);
    const result = photoResponse.body.results; 
    const cleanedResults = result.filter(photo => photo.photos != null)
    const photos = cleanedResults.map(photo => photo.photos[0].photo_reference);
    const photoUrls = photos.map(photoReference => `https://maps.googleapis.com/maps/api/place/photo?maxwidth=700&photoreference=${photoReference}&key=${process.env.GOOGLE_API_KEY}` )
    return res.status(200).json({photoUrls})
  } catch (error) {
    console.log(error)
    return res.status(400).json({error: error })
  }
})
 
router.get('/parsedhtml', async(req, res) => {
  const sevenDayForecast = await needle('get', `${API_BASE_URL}onecall?lat=17.1899&lon=-88.4976&appid=${API_KEY_VALUE}`);
  const data = await sevenDayForecast.body;
 
  const weatherDates = await data.daily.map(dailyTemp => {
    let date = new Date(dailyTemp.dt*1000).toISOString().slice(0, 10);
    return date;
  });   

  const dailyWeatherTemps = await data.daily.map(dailyTemp => {
    const weatherTemps = {
      day: (dailyTemp.temp.day - 273.15).toFixed(1),
      minMax: `${(dailyTemp.temp.min - 273.15).toFixed(1)} - ${(dailyTemp.temp.max - 273.15).toFixed(1)}`,
      night: (dailyTemp.temp.night - 273.15).toFixed(1),
      feelsLike: (dailyTemp.feels_like.day - 273.15).toFixed(1),
    }
    return weatherTemps;
  }); 

  const temps = dailyWeatherTemps.map(temps => temps.day);
  console.log(temps)
  return res.status(200).send(
    `<!DOCTYPE html>
      <html lang="en">
      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Belize Weather App</title>
        <link rel="stylesheet" href='/style.css' />
      </head>
  
      <body>
 
      <div class="general-forecast">
      <div class="today">
        <div class="selector">
          <label for="locations">Choose a location</label>
          <select name="locations" id="locations">
          </select>
          <div class="moon-sunrise">
            <div class="row">
              <div class="col">
                <h4>Sunrise</h4> <span class="sunrise">${data?.current?.sunrise}</span>
              </div>
              <div class="col">
                <h4>Sunset</h4> <span class="sunset">${data?.current?.sunset}</span>
              </div>
            </div>
            <div class="row">
              <div class="col">
                <h4>Moonrise</h4> <span class="moonrise">...</span>
              </div>
              <div class="col">
                <h4>Moonset: </h4> <span class="moonset">...</span>
              </div>
            </div>
            <div class="tide-details">
              <h4>Tide Details</h4>
            </div>
          </div>
        </div>
        <div class="forecast-details">
          <h3>Today</h3>
          <div class="detail city">...</div>
          <div class="detail icon">...</div>
          <div class="detail temperature">...</div>
          <div class="detail wind">...</div>
        </div>
      </div>
      <div class="tonight">
        <div class="forecast-details">
          <h3>Tonight</h3>
          <div class="detail city">...</div>
          <div class="detail icon">...</div>
          <div class="detail temperature">...</div>
          <div class="detail wind">...</div>
        </div>
      </div>
      <div class="tomorrow">
        <div class="forecast-details">
          <h3>Tomorrow</h3>
          <div class="detail city">...</div>
          <div class="detail icon">...</div>
          <div class="detail temperature"></div>
          <div class="detail wind">...</div>
        </div>
      </div>
    </div>
 
    <div class="sevenday-forcast">
      <canvas id="myChart"></canvas>
    </div>
    ${WeatherGraphs()}
  </body>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns/dist/chartjs-adapter-date-fns.bundle.min.js"></script>
    <script>
      ${WeatherChart(weatherDates, temps)}
    </script>
    </html>`
  )
})

module.exports = router