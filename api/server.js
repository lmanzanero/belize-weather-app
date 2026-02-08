import express from "express";
import cors from "cors";
import rateLimit from "express-rate-limit";
import "dotenv/config";
import errorHandler from "./middleware/error.js";
import router from "./routes/index.js"; 

const PORT = process.env.PORT || 3000;

const app = express();

// Rate limiting
const limiter = rateLimit({
  windowMs: 10 * 60 * 1000, // 10 Mins
  max: 100,
});

app.use(express.json());
app.use(express.static("public"));
app.use(limiter);
app.set("trust proxy", 1);

// Enable cors
app.use(cors()); 
// Error handler middleware
app.use(errorHandler);

app.get("/", (req, res) => {
  return res.json({message: 'Belize Weather API /api/v1'})
})
// Routes
app.use("/api/v1", router);

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
