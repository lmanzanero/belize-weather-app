import 'package:dio/dio.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_better_auth/plugins/email_otp/email_otp_extension.dart';
import '../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final BetterAuthClient _client;
  final Dio _dio;

  AuthRepositoryImpl(this._client) : _dio = Dio(BaseOptions(
    // Ensure we use the correct IP for the emulator
    baseUrl: 'http://10.0.2.2:3000/api/v1/auth/',
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
  ));

  @override
  Future<void> sendOtp(String email) async {
    print("sendOTP called");
    try {
      final response = await _client.emailOtp.sendVerification(email: email, type: 'sign-in');
      // final response = await _dio.post('send-otp', data: {
      //   'email': email,
      //   'type': 'sign-in',
      // });
      print(response);
      // if(response.data != null ) {
      //   throw Exception('Server error: ${response.data?.message}');
      // }
      // if (response.statusCode != 200) {
      //   throw Exception('Server error: ${response.statusCode}');
      // }
    } on DioException catch (e) {
      final msg = e.response?.data?['message'] ?? e.message;
      throw Exception('Failed to send code: $msg');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Future<bool> verifyOtp(String email, String otp) async {
    try {
      final response = await _client.emailOtp.signIn(email: email, otp: otp);
      // final response = await _dio.post('signin-otp', data: {
      //   'email': email,
      //   'otp': otp,
      // });

      print(response);

      if (response.data != null) {
        // Here we should ideally check for a session/token in the response
        // and ensure the _client is aware of it.
        return true;
      }
      return false;
    } on DioException catch (e) {
      final msg = e.response?.data?['message'] ?? e.message;
      throw Exception('Verification failed: $msg');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Future<void> logout() async {
    try {
     print('logout called');
    final result =  await _client.signOut();

    print("Logout Result $result");
    } catch (_) {}
  }

  @override
  Future<bool> checkAuth() async {
    try {
      // getSession is the reliable way to check if the user is truly logged in
      final session = await _client.getSession();
      print('Session auth ${session}');
      return session != null;
    } catch (_) {
      return false;
    }
  }
}
