import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvConfig {
  static String get appName => dotenv.env['APP_NAME'] ?? 'Belize Skies';
  static String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? 'https://belize-weather-app.vercel.app/api/v1';
  static String get authBaseUrl => dotenv.env['AUTH_BASE_URL'] ?? 'https://belize-weather-app.vercel.app/api/v1/auth';
  static String get environment => dotenv.env['ENV'] ?? 'production';
  
  static bool get isDevelopment => environment == 'development';
}
