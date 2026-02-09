import 'package:dio/dio.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import '../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BetterAuthClient _client;
  final Dio _dio;

  AuthRepositoryImpl(this._client) : _dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:3000/api/v1/auth/',
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  @override
  Future<void> sendOtp(String email) async {
    try {
      // Calling your Express.js route: POST /api/v1/send-otp
      final response = await _dio.post('send-otp', data: {
        'email': email,
        'type': 'sign-in',
      });

      if (response.statusCode != 200) {
        throw Exception('Failed to send OTP: ${response.data}');
      }
    } catch (e) {
      throw Exception('Error sending OTP: $e');
    }
  }

  @override
  Future<bool> verifyOtp(String email, String otp) async {
    try {
      // Calling your Express.js route: POST /api/v1/signin-otp
      final response = await _dio.post('signin-otp', data: {
        'email': email,
        'otp': otp,
      });

      if (response.statusCode == 200) {
        // Better Auth usually returns the user/session in the response
        // We can manually sync this with the BetterAuthClient if needed
        // For now, return true if we got a successful response
        return response.data != null;
      }
      return false;
    } catch (e) {
      throw Exception('Error verifying OTP: $e');
    }
  }

  @override
  Future<void> logout() async {
    // Call your backend logout if exists, or just clear the client session
    await _client.signOut();
  }

  @override
  Future<bool> checkAuth() async {
    try {
      final session = await _client.getSession();
      return session != null;
    } catch (_) {
      return false;
    }
  }
}
