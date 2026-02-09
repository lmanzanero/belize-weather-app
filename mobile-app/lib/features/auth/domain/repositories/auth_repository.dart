abstract class AuthRepository {
  Future<void> sendOtp(String email);
  Future<bool> verifyOtp(String email, String otp);
  Future<void> logout();
  Future<bool> checkAuth();
}
