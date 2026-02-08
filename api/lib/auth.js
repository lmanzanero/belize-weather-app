import { betterAuth } from "better-auth"
import { emailOTP } from "better-auth/plugins"

export const auth = betterAuth({
    // ... other config options
    plugins: [
        emailOTP({ 
            async sendVerificationOTP({ email, otp, type }) { 
                if (type === "sign-in") { 
                    // Send the OTP for sign in
                } else if (type === "email-verification") { 
                    // Send the OTP for email verification
                } else { 
                    // Send the OTP for password reset
                } 
            }, 
        }) 
    ]
})

export const sendVerficationOTPResult = await auth.api.sendVerificationOTP({
    body: {
        email: "user@example.com", // required
        type: "sign-in", // required
    },
});

export const checkVerficationOTPResult = await auth.api.checkVerificationOTP({
    body: {
        email: "user@example.com", // required
        type: "sign-in", // required
        otp: "123456", // required
    },
});

export const signInEmailOTPResult = await auth.api.signInEmailOTP({
    body: {
        email: "user@example.com", // required
        otp: "123456", // required
    },
});


export const verifyEmailOTPResult = await auth.api.verifyEmailOTP({
    body: {
        email: "user@example.com", // required
        otp: "123456", // required
    },
});

export const passwordResetEmailOTPResult = await auth.api.requestPasswordResetEmailOTP({
    body: {
        email: "user@example.com", // required
    },
});

export const resetPasswordEmailOTPResult = await auth.api.resetPasswordEmailOTP({
    body: {
        email: "user@example.com", // required
        otp: "123456", // required
        password: "new-secure-password", // required
    },
});