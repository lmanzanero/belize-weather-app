import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'auth_repository_provider.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_provider.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    @Default(false) bool otpSent,
    String? email,
    String? error,
  }) = _AuthState;
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repository) : super(const AuthState()) {
    checkAuth();
  }

  final AuthRepository _repository;

  Future<void> checkAuth() async {
    final isAuthenticated = await _repository.checkAuth();
    if (isAuthenticated) {
      state = state.copyWith(isAuthenticated: true);
    }
  }

  Future<void> sendOtp(String email) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      await _repository.sendOtp(email);
      state = state.copyWith(isLoading: false, otpSent: true, email: email);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
  
  Future<void> verifyOtp(String otp) async {
    if (state.email == null) return;
    
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final success = await _repository.verifyOtp(state.email!, otp);
      if (success) {
        state = state.copyWith(isLoading: false, isAuthenticated: true, otpSent: false);
      } else {
        state = state.copyWith(isLoading: false, error: 'Invalid OTP');
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
  
  Future<void> logout() async {
    await _repository.logout();
    state = const AuthState(isAuthenticated: false);
  }

  void resetFlow() {
    state = state.copyWith(otpSent: false, error: null);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository);
});
