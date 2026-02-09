import express from "express";
import cors from "cors";
import rateLimit from "express-rate-limit";
import "dotenv/config";
import errorHandler from "./middleware/error.js";
import router from "./routes/index.js"; 
import authRoutes from "./routes/auths.js";
import path from "path";
import { fileURLToPath } from "url";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const PORT = process.env.PORT || 3000;

const app = express();

// Rate limiting
const limiter = rateLimit({
  windowMs: 10 * 60 * 1000, // 10 Mins
  max: 100,
});

 
app.use(limiter);
app.set("trust proxy", 1);

// Enable cors
app.use(cors()); 

app.use(express.static(path.join(__dirname, "./public")));
// Error handler middleware
 
app.use(errorHandler);

app.get("/", (req, res) => {
  return res.json({message: 'Belize Weather API /api/v1'})
})

app.use(express.json());
// Routes
app.use("/api/v1", router);
app.use("/api/v1/auth", authRoutes);



app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
