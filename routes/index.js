import url from "url";
import express from "express";

import needle from "needle";
import apicache from "apicache";
import stationsJSON from "../public/stations.json" assert { type: "json" };

const router = express.Router();
// Env vars
const API_BASE_URL = process.env.API_BASE_URL;
const API_KEY_NAME = process.env.API_KEY_NAME;
const API_KEY_VALUE = process.env.API_KEY_VALUE;
const API_STATION_URL = process.env.API_STATION_URL;
const API_DAILY_URL = process.env.API_DAILY_URL;
const API_GENERAL_URL = process.env.API_GENERAL_URL;
const API_MARINE_URL = process.env.API_MARINE_URL;
const API_FORECAST_AREAS_URL = process.env.API_FORECAST_AREAS_URL;
// Init cache
let cache = apicache.middleware;
// cache('2 minutes')

router.get("/", cache("2 minutes"), async (req, res, next) => {
  try {
    const params = new URLSearchParams({
      [API_KEY_NAME]: API_KEY_VALUE,
      ...url.parse(req.url, true).query,
    });

    const apiRes = await needle("get", `${API_BASE_URL}weather?${params}`);
    const data = apiRes.body;

    // Log the request to the public API
    if (process.env.NODE_ENV !== "production") {
      console.log(`REQUEST: ${API_BASE_URL}?${params}`, data);
    }

    res.status(200).json(data);
  } catch (error) {
    next(error);
  }
});

//current location
router.get("/location", cache("2 minutes"), async (req, res, next) => {
  try {
    const params = `lat=17.1899&lon=88.4976&appid=${API_KEY_VALUE}`;
    const apiRes = await needle("get", `${API_BASE_URL}weather?${params}`);
    const data = apiRes.body;
    console.log(data);
    res.status(200).json(data);
  } catch (error) {
    next(error);
  }
});

router.get("/forecast", cache("2 minutes"), async (req, res, next) => {
  const date = new Date().getTime();
  try {
    const sevenDayForecast = await needle(
      "get",
      `${API_BASE_URL}forecast?lat=17.1899&lon=-88.4976&appid=${API_KEY_VALUE}`,
    );
    const forecastDaily = await needle("get", `${API_DAILY_URL}_${date}`);
    const forecastGeneral = await needle("get", `${API_GENERAL_URL}_${date}`);
    const forecastMarine = await needle("get", `${API_MARINE_URL}t=${date}`);
    const allForecast = await Promise.all([
      await forecastDaily,
      await forecastGeneral,
      await forecastMarine,
      await sevenDayForecast,
    ]);
    const [daily, general, marine, weekly] = allForecast.map(
      async (data) => await data.body,
    );
    return res.status(200).json({
      daily: await daily,
      general: await general,
      marine: await marine,
      weekly: await weekly,
    });
  } catch (error) {
    next(error);
  }
});

router.get("/forecastareas", cache("2 minutes"), async (req, res, next) => {
  try {
    const date = new Date().getTime();
    const apiRes = await needle("get", `${API_FORECAST_AREAS_URL}_=${date}`);
    const data = apiRes.body;
    return res.status(200).json(data);
  } catch (error) {
    next(error);
  }
});

router.get("/geopicture", cache("2 minutes"), async (req, res, next) => {
  const { lat, long } = req.query;
  try {
    const photoApi = `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${lat},${long}&radius=100&type=&keyword=&key=${process.env.GOOGLE_API_KEY}`;
    const photoResponse = await needle("get", photoApi);
    const result = photoResponse.body.results;
    const cleanedResults = result.filter((photo) => photo.photos != null);
    const photos = cleanedResults.map(
      (photo) => photo.photos[0].photo_reference,
    );
    const photoUrls = photos.map(
      (photoReference) =>
        `https://maps.googleapis.com/maps/api/place/photo?maxwidth=700&photoreference=${photoReference}&key=${process.env.GOOGLE_API_KEY}`,
    );
    return res.status(200).json({ photoUrls });
  } catch (error) {
    next(error);
  }
});

router.get("/weather-stations", cache("2 minutes"), async (req, res, next) => {
  try {
    return res.status(200).json(stationsJSON);
  } catch (error) {
    next(error);
  }
});
router.get("/weather-stations/:station", async (req, res, next) => {
  try {
    const url = `${API_STATION_URL}/${req.params.station}/?_=${Date.now()}`;
    const response = await needle("get", url);
    if (response.statusCode !== 200) {
      throw new Error(
        `API request failed with status code: ${weatherData.statusCode}`,
      );
    }
    const result = await response.body;
    return res.status(200).json(result);
  } catch (error) {
    next(error);
  }
});

export default router;
