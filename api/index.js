import express from "express";
import cors from "cors";
import rateLimit from "express-rate-limit";
import "dotenv/config";
import errorHandler from "../middleware/error.js";
import router from "../routes/index.js";
import apicache from "apicache";
let cache = apicache.middleware;

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

// Routes
app.use("/", router);

// Error handler middleware
app.use(errorHandler);

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
