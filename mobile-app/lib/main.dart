import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'app.dart';
import 'core/providers/theme_provider.dart';
import 'core/error/error_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize global error handling
  GlobalErrorHandler.initialize();
  
  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  
  // Initialize Better Auth
  await FlutterBetterAuth.initialize(
    url: 'http://10.0.2.2:3000/api/v1/auth',
  );
  
  // Remove the hash from URLs on web
  usePathUrlStrategy();
  
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const App(),
    ),
  );
}
