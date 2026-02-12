import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_better_auth/flutter_better_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'app.dart';
import 'core/providers/theme_provider.dart';
import 'core/error/error_handler.dart';
import 'core/config/env_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Load environment variables before anything else
  // Loads .env.development in debug mode, .env.production in release/profile mode
  await dotenv.load(fileName: kDebugMode ? ".env.development" : ".env.production");
  
  // Initialize global error handling
  GlobalErrorHandler.initialize();
  
  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  
  // Initialize Better Auth using values from the env file
  await FlutterBetterAuth.initialize(
    url: EnvConfig.authBaseUrl,
  );

  print("Environment: ${EnvConfig.environment}: ${EnvConfig.authBaseUrl}");
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
