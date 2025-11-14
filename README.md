# InternaBot - AI-Powered Medical Coaching App

An AI-powered mobile coaching app for 5th and 6th year medical students at FMPM Marrakech preparing for internship concours.

## Features

- **User Authentication**: Email/password signup with student verification
- **Exam Copy Submission**: Photo upload or PDF of handwritten exam answers
- **AI-Powered Correction**: Systematic scoring with expert medical references
- **Study Chat Assistant**: Real-time Q&A for medical questions
- **Progress Tracking**: Score trends and improvement metrics
- **Specialty Selection Guide**: AI-driven recommendations

## Tech Stack

- **Framework**: Flutter 3.24+
- **State Management**: Riverpod
- **Backend**: Firebase (Auth, Firestore, Storage)
- **AI**: Claude API (via backend)
- **Storage**: Hive/Isar for local caching

## Setup

1. Install Flutter dependencies:
```bash
flutter pub get
```

2. Generate code:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. Configure Firebase:
   - Add `google-services.json` (Android) to `android/app/`
   - Add `GoogleService-Info.plist` (iOS) to `ios/Runner/`
   - Run `flutterfire configure` if you have Firebase CLI installed

4. Set up backend API:
   - Update `lib/core/constants/app_constants.dart` with your backend URL
   - Ensure your backend handles Claude API calls securely

5. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── core/
│   ├── theme/          # App theme and styling
│   ├── constants/      # App constants
│   └── utils/          # Utility functions
├── data/
│   ├── models/         # Data models (Firestore)
│   ├── repositories/   # Repository implementations
│   └── datasources/    # Remote/local data sources
├── domain/
│   ├── entities/       # Domain entities
│   └── usecases/       # Business logic use cases
└── presentation/
    ├── features/
    │   ├── auth/       # Authentication
    │   ├── dashboard/  # Main dashboard
    │   ├── exam/       # Exam submission & corrections
    │   ├── chat/       # AI chat interface
    │   └── specialty/  # Specialty selection guide
    ├── widgets/        # Reusable widgets
    └── routes/         # Navigation/routing
```

## Development Phases

### Phase 1: Foundation ✅
- [x] Project setup
- [x] Firebase configuration structure
- [x] Authentication flow
- [x] Basic UI shell

### Phase 2: Core Features (In Progress)
- [x] Exam submission flow
- [ ] AI correction integration (backend needed)
- [x] Display correction results
- [ ] Progress tracking (data integration needed)

### Phase 3: Enhanced Features
- [x] Chat interface UI
- [ ] Chat AI integration (backend needed)
- [x] Specialty selection guide UI
- [ ] Specialty recommendation AI (backend needed)
- [ ] Notifications system

### Phase 4: Polish & Launch
- [ ] UI refinements
- [ ] User testing
- [ ] Bug fixes
- [ ] Performance optimization

## Next Steps

1. **Backend Setup**: Create a Node.js/Cloud Functions backend to handle:
   - Claude API integration
   - Image/PDF processing
   - Secure API key management

2. **Firebase Configuration**: 
   - Set up Firebase project
   - Configure authentication
   - Set up Firestore rules
   - Configure Storage rules

3. **Testing**: 
   - Test authentication flow
   - Test file uploads
   - Test API integrations

## License

Private project - All rights reserved
