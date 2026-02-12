import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/plugins/email_otp/email_otp_extension.dart';
import '../domain/repositories/auth_repository.dart';
import '../../../core/config/env_config.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BetterAuthClient _client;
  final SharedPreferences _prefs;
  final Dio _dio;

  static const String _sessionExistsKey = 'auth_session_active';

  AuthRepositoryImpl(this._client, this._prefs) : _dio = Dio(BaseOptions(
    // Use the central config instead of hardcoded 10.0.2.2
    baseUrl: EnvConfig.authBaseUrl,
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  @override
  Future<void> sendOtp(String email) async {
    try {
      final result = await _client.emailOtp.sendVerification(
        email: email, 
        type: 'sign-in'
      );
      
      if (result.error != null) {
        throw Exception(result.error?.message ?? 'Failed to send OTP');
      }
    } catch (e) {
      throw Exception('Error sending OTP: $e');
    }
  }

  @override
  Future<bool> verifyOtp(String email, String otp) async {
    try {
      final result = await _client.emailOtp.signIn(
        email: email, 
        otp: otp
      );

      if (result.data != null) {
        await _prefs.setBool(_sessionExistsKey, true);
        return true;
      }
      
      if (result.error != null) {
        throw Exception(result.error?.message ?? 'Verification failed');
      }
      
      return false;
    } catch (e) {
      throw Exception('Error verifying OTP: $e');
    }
  }

  @override
  Future<void> logout() async {
    try {
      await _client.signOut();
      await _prefs.remove(_sessionExistsKey);
    } catch (_) {}
  }

  @override
  Future<bool> checkAuth() async {
    try {
      final session = await _client.getSession();
      if (session != null) {
        await _prefs.setBool(_sessionExistsKey, true);
        return true;
      }
      return _prefs.getBool(_sessionExistsKey) ?? false;
    } catch (_) {
      return _prefs.getBool(_sessionExistsKey) ?? false;
    }
  }
}
