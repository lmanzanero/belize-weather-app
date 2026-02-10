import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_better_auth/core/api/better_auth_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/providers/theme_provider.dart';
import '../../data/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';

final authClientProvider = Provider<BetterAuthClient>((ref) {
  return FlutterBetterAuth.client;
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final client = ref.watch(authClientProvider);
  final prefs = ref.watch(sharedPreferencesProvider);
  return AuthRepositoryImpl(client, prefs);
});
