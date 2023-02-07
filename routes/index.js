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
})

// Forecast for all of these
// Current weather
// Minute forecast for 1 hour
// Hourly forecast for 48 hours
// Daily forecast for 7 days
// National weather alerts
// Historical weather data for the previous 5 days

router.get('/forecast',  cache('2 minutes'), async (req, res, next) => {
  try { 
    const apiRes = await needle('get', `${API_BASE_URL}onecall?lat=17.1899&lon=88.4976&appid=${API_KEY_VALUE}`)
    const data = apiRes.body
    res.status(200).json(data)
  } catch (error) {
    next(error)
  }
})


router.get('/forecastareas', cache('2 minutes'), async (req, res, next) => {
  try {
    const date = new Date().getTime(); 
    const apiRes = await needle('get', `https://wimp.nms.gov.bz/api/forecast_areas/read.php?_=${date}`);
    const data = apiRes.body;
    return res.status(200).json(data);
  } catch (error) {
    
  }
})
module.exports = router
