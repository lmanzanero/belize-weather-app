import express from "express";
import { auth } from "../lib/auth.js"; 

const router = express.Router();

router.get("/health-check", async (req, res, next) => {
  try {
    res.status(200).json({ "auth-heath-check": "Ok" });
  } catch (error) {
    next(error);
  }
});
// 1. Request OTP (Sign-in or Verification)
router.post("/email-otp/send-verification-otp", async (req, res, next) => {
    console.log("Data: ", req?.body);
    try {
        console.log("Better-Auth initialized successfully");
        const result = await auth.api.sendVerificationOTP({
            body: req.body, // Expects { email, type }
        });
        console.log(result)
        res.json(result);
    } catch (e) { next(e); }
});

// 2. Check if OTP is valid (without signing in yet)
router.post("/check-otp", async (req, res, next) => {
    try {
        const result = await auth.api.checkVerificationOTP({
            body: req.body, // Expects { email, type, otp }
        });
        res.json(result);
    } catch (e) { next(e); }
});

// 3. Complete Sign In with OTP
router.post("/sign-in/email-otp", async (req, res, next) => {
    console.log("api called")
    try {
        const result = await auth.api.signInEmailOTP({
            body: req.body, // Expects { email, otp }
        });
        console.log("Sign in message: ", result)
        res.json(result);
    } catch (e) { next(e); }
});

// 4. Verify Email with OTP
router.post("/verify-email", async (req, res, next) => {
    try {
        const result = await auth.api.verifyEmailOTP({
            body: req.body, // Expects { email, otp }
        });
        res.json(result);
    } catch (e) { next(e); }
});

// 5. Request Password Reset OTP
router.post("/password-reset/request", async (req, res, next) => {
    try {
        const result = await auth.api.requestPasswordResetEmailOTP({
            body: req.body, // Expects { email }
        });
        res.json(result);
    } catch (e) { next(e); }
});

// 6. Reset Password with OTP
router.post("/password-reset/confirm", async (req, res, next) => {
    try {
        const result = await auth.api.resetPasswordEmailOTP({
            body: req.body, // Expects { email, otp, password }
        });
        res.json(result);
    } catch (e) { next(e); }
});

export default router;