import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'auth_repository_provider.dart';
import '../../domain/repositories/auth_repository.dart';

part 'auth_provider.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    @Default(false) bool otpSent,
    String? email,
    String? error,
  }) = _AuthState;

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._repository) : super(const AuthState()) {
    // Check initial auth state on app start
    checkAuth();
  }

  final AuthRepository _repository;

  Future<void> checkAuth() async {
    // If we're already loading or authenticated, we can avoid double checks
    // but usually, a silent check on startup is preferred.
    try {
      final hasValidSession = await _repository.checkAuth();
      if (mounted) {
        state = state.copyWith(
          isAuthenticated: hasValidSession,
          isLoading: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(isAuthenticated: false, isLoading: false);
      }
    }
  }

  Future<void> sendOtp(String email) async {
    state = state.copyWith(isLoading: true, error: null, isAuthenticated: false);
    
    try {
      await _repository.sendOtp(email);
      if (mounted) {
        state = state.copyWith(
          isLoading: false, 
          otpSent: true, 
          email: email,
          isAuthenticated: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(
          isLoading: false, 
          error: e.toString(), 
          isAuthenticated: false,
        );
      }
    }
  }
  
  Future<void> verifyOtp(String otp) async {
    if (state.email == null) return;
    
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final success = await _repository.verifyOtp(state.email!, otp);
      
      // After verification, we verify the session again to be 100% sure
      final hasSession = await _repository.checkAuth();
      
      if (mounted) {
        state = state.copyWith(
          isLoading: false, 
          isAuthenticated: success || hasSession, 
          otpSent: false,
        );
      }
    } catch (e) {
      if (mounted) {
        state = state.copyWith(
          isLoading: false, 
          error: e.toString(), 
          isAuthenticated: false,
        );
      }
    }
  }
  
  Future<void> logout() async {
    state = state.copyWith(isLoading: true);
    await _repository.logout();
    if (mounted) {
      state = const AuthState(isAuthenticated: false);
    }
  }

  void resetFlow() {
    state = state.copyWith(otpSent: false, error: null, isAuthenticated: false);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final repository = ref.watch(authRepositoryProvider);
  return AuthNotifier(repository);
});
