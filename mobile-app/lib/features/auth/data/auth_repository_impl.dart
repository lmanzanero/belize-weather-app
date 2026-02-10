import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/plugins/email_otp/email_otp_extension.dart';
import '../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BetterAuthClient _client;
  final SharedPreferences _prefs;
  
  // Persistence Key
  static const String _sessionExistsKey = 'auth_session_active';

  AuthRepositoryImpl(this._client, this._prefs);

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

      // result.data contains the { token, user } object you mentioned
      if (result.data != null) {
        // 1. Manually persist the login state in SharedPreferences
        // This acts as our 'source of truth' if the client fails to restore on reload
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
      // Clear our fallback flag
      await _prefs.remove(_sessionExistsKey);
    } catch (_) {}
  }

  @override
  Future<bool> checkAuth() async {
    try {
      // 1. Check the library's built-in session check
      final session = await _client.getSession();
      if (session != null) {
        await _prefs.setBool(_sessionExistsKey, true);
        return true;
      }

      // 2. Fallback: If getSession() is null (common after restart with custom APIs),
      // check if we manually saved a 'session active' flag.
      return _prefs.getBool(_sessionExistsKey) ?? false;
    } catch (_) {
      return _prefs.getBool(_sessionExistsKey) ?? false;
    }
  }
}
