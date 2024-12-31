import express from "express";
import cors from "cors";
import rateLimit from "express-rate-limit";
import "dotenv/config";
import errorHandler from "../middleware/error.js";
import router from "../routes/index.js";
import needle from "needle";
import apicache from "apicache";
let cache = apicache.middleware;

// Env vars
const API_BASE_URL = process.env.API_BASE_URL;
const API_KEY_VALUE = process.env.API_KEY_VALUE;
const API_DAILY_URL = process.env.API_DAILY_URL;
const API_GENERAL_URL = process.env.API_GENERAL_URL;
const API_MARINE_URL = process.env.API_MARINE_URL;

const PORT = process.env.PORT || 3000;

const app = express();

// Rate limiting
const limiter = rateLimit({
  windowMs: 10 * 60 * 1000, // 10 Mins
  max: 100,
});

app.use(express.json());
app.use(limiter);
app.set("trust proxy", 1);

// Enable cors
app.use(cors());

// Set static folder
app.use(express.static("public"));

app.get("/forecast", cache("2 minutes"), async (req, res, next) => {
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

// Routes
app.use("/v1", router);

// Error handler middleware
app.use(errorHandler);

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
