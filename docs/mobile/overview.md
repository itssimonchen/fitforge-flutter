# FitForge Mobile App Overview

---

## Tech Stack (Flutter)

| Layer                | Technology / Library                    | Purpose                                             |
| -------------------- | --------------------------------------- | --------------------------------------------------- |
| **Mobile Framework** | Flutter                                 | Cross-platform app development (iOS/Android)        |
| **State Management** | Bloc                                    | Event-driven state management for UI/business logic |
| **Navigation**       | `go_router`.                            | Declarative routing with deep link support          |
| **UI Design**        | Material 3 + Custom Widgets             | Consistent, modular, and themed UI components       |
| **Analytics**        | PostHog                                 | In-app event tracking and usage analytics           |
| **Local Storage**    | Flutter Secure Storage                  | Local storage for auth/session/token caching        |
| **Backend / BaaS**   | Supabase (supabase_flutter)	         | Provides Authentication, Realtime Database, Storage |
| **Testing**          | `flutter_test`, `bloc_test`, `mocktail` | Unit and widget testing tools                       |

---

## Flutter Development Commands

### Running & Building

* Run app on device/emulator:

  ```bash
  flutter run
  ```

* Build Android APK (release):

  ```bash
  flutter build apk --release
  ```

* Build iOS app (release):

  ```bash
  flutter build ios --release
  ```

### Dependency Management

* Install dependencies:

  ```bash
  flutter pub get
  ```

* Upgrade dependencies:

  ```bash
  flutter pub upgrade
  ```

* Add a new package:

  ```bash
  flutter pub add <package_name>
  ```

### Testing & Quality

* Run all tests:

  ```bash
  flutter test
  ```

* Format code:

  ```bash
  flutter format .
  ```

* Analyze code:

  ```bash
  flutter analyze
  ```

---

## Project Structure Highlights

```
lib/
├── main.dart                 # App entry point
├── app.dart                  # Root widget, BlocProviders, routing
├── auth/                     # Auth flow and logic
│   ├── bloc/                 # Auth Bloc files
│   │   ├── auth_bloc.dart    # Bloc class: maps AuthEvents to AuthStates
│   │   ├── auth_event.dart   # Defines auth-related events (login, logout)
│   │   └── auth_state.dart   # Defines auth states (loading, authenticated, etc.)
│   ├── auth_service.dart
│   └── login_page.dart
├── home/                     # Post-login dashboard or landing
│   └── home_page.dart
│   └── home_service.dart     
├── analytics/                # PostHog integration
│   └── posthog_service.dart
├── widgets/                  # Shared UI components
├── theme/                    # Colors, fonts, spacing
├── models/                   # Data models and entities
├── utils/                    # Helpers, extensions, constants
├── config/                   # App configuration and environment variables
├── navigation/               # Routing definitions, guards
├── additional_features/      # Placeholder for future modules
│   ├── bloc/                 # Bloc files for additional features
│   │   ├── additional_features_bloc.dart
│   │   ├── additional_features_event.dart
│   │   └── additional_features_state.dart
│   ├── additional_features_service.dart
│   └── additional_features_page.dart
test/                         # should mirror lib for testing 
```

---

## Getting Started (Local Dev)

1. Navigate to the Flutter project:

   ```bash
   cd flutter
   ```

2. Install packages:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

4. For iOS:
   Make sure you're on macOS with Xcode installed and run:

   ```bash
   open ios/Runner.xcworkspace
   ```

---

## Notes

* Bloc pattern is used across screens for predictable, scalable state management.
* PostHog is integrated for product analytics; events are tracked per user action.
* Folder structure is modular to support scalability as more features (gear, leveling, challenges) are added.

---
