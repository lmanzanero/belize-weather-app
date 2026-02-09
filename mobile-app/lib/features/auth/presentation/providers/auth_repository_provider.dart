import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart'; // Explicit import required
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';

final authClientProvider = Provider<BetterAuthClient>((ref) {
  // FlutterBetterAuth.client returns a BetterAuthClient instance
  return FlutterBetterAuth.client;
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final client = ref.watch(authClientProvider);
  return AuthRepositoryImpl(client);
});
