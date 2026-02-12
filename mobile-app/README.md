# Belize Skies

A modern, production-ready Flutter starter template with best practices, clean architecture, and essential features pre-configured. Perfect for quickly bootstrapping new Flutter projects with a solid foundation.

## 🌐 Live Demo

Check out the live demo: [https://flutter-material3-starter.web.app](https://flutter-material3-starter.web.app)

## 🚀 Features

### Core Architecture
- **Clean Architecture**: Organized code structure with separation of concerns
- **State Management**: Riverpod 2.0 with code generation support
- **Routing**: GoRouter for declarative navigation
- **Dependency Injection**: Built-in with Riverpod
- **Error Handling**: Comprehensive error boundary and error widgets

### UI/UX Features
- **Responsive Design**: Adaptive layouts for mobile, tablet, and desktop
- **Theme System**: Material 3 with light/dark mode support
- **Internationalization**: Multi-language support (EN, ES, FR)
- **Animations**: Smooth transitions with flutter_animate
- **Loading States**: Skeleton screens and shimmer effects
- **Custom Components**: Reusable UI components library

### Built-in Pages
- **Authentication**: Login and registration flows
- **Dashboard**: Stats, charts, and activity feeds
- **User Management**: CRUD operations with data tables
- **Settings**: Theme and language preferences
- **Onboarding**: First-time user experience
- **Error Pages**: 404, error boundaries, and fallbacks

### Development Features
- **Mock API Service**: Development without backend
- **Form Validation**: Comprehensive form handling
- **File Upload**: Drag-and-drop file upload widget
- **Search**: Integrated search functionality
- **Notifications**: In-app notification system

## 📋 Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (3.0 or higher)
- IDE with Flutter support (VS Code, Android Studio, IntelliJ)

## 🛠️ Installation

1. **Clone the repository**
```bash
git clone https://github.com/momentous-developments/flutter-starter-app.git
cd flutter-starter-app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run build runner** (for code generation)
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. **Run the app**
```bash
flutter run
```

## 📱 Supported Platforms

- ✅ iOS
- ✅ Android
- ✅ Web
- ✅ macOS
- ✅ Windows
- ✅ Linux

## 🏗️ Project Structure

```
lib/
├── core/                      # Core functionality
│   ├── constants/            # App constants
│   ├── error/               # Error handling
│   ├── models/              # Core data models
│   ├── providers/           # Global providers
│   ├── router/              # Navigation setup
│   ├── services/            # Core services
│   └── theme/               # Theme configuration
├── features/                 # Feature modules
│   ├── auth/                # Authentication
│   ├── dashboard/           # Dashboard
│   ├── forms/               # Forms examples
│   ├── home/                # Home & showcases
│   ├── notifications/       # Notifications
│   ├── onboarding/          # Onboarding flow
│   ├── settings/            # App settings
│   └── users/               # User management
├── l10n/                     # Localization files
├── shared/                   # Shared components
│   ├── providers/           # Shared providers
│   └── widgets/             # Reusable widgets
└── main.dart                # App entry point
```

## 🎨 Customization

### Theming
Edit `lib/core/theme/app_theme.dart` to customize:
- Color schemes
- Typography
- Component themes
- Light/dark mode settings

### Adding New Features
1. Create a new folder in `lib/features/`
2. Follow the existing structure:
   - `data/` - Repositories and data sources
   - `presentation/` - UI components
     - `pages/` - Screen widgets
     - `widgets/` - Feature-specific widgets
     - `providers/` - Feature state management

### Localization
1. Add translations to `lib/l10n/app_*.arb` files
2. Run `flutter gen-l10n` to generate code

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Generate coverage report
genhtml coverage/lcov.info -o coverage/html
```

## 📦 Building for Production

### Web
```bash
flutter build web --release
```

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Desktop
```bash
flutter build macos --release
flutter build windows --release
flutter build linux --release
```

## 🔧 Configuration

### Environment Setup
Create `.env` files for different environments:
- `.env.development`
- `.env.staging`
- `.env.production`

### API Configuration
Update `lib/core/services/mock_api_service.dart` with your API endpoints.

## 📚 Key Dependencies

- **State Management**: flutter_riverpod, riverpod_annotation
- **Navigation**: go_router
- **UI/UX**: flutter_animate, flex_color_scheme
- **Utilities**: intl, shared_preferences, cached_network_image
- **Development**: freezed, json_serializable, build_runner

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Riverpod for powerful state management
- The Flutter community for inspiration and packages
