import express from "express";
import cors from "cors";
import rateLimit from "express-rate-limit";
import "dotenv/config";
import errorHandler from "../middleware/error.js";
import router from "../routes/index.js";
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
// app.use(express.static("public"));

// Routes
app.use("/", router);

// Error handler middleware
app.use(errorHandler);

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
