# How to upload past chats
_Exported on 11/14/2025 at 16:06:48 GMT+1 from Cursor (1.7.54)_

---

**User**

how to upload past chats

---

**Cursor**


Checking the workspace to understand the context.



Here are ways to upload or reference past chats in Cursor:

## Methods to Upload/Reference Past Chats:

1. **Copy and paste directly**
   - Copy the chat history from your previous conversation
   - Paste it into the current chat

2. **Upload as a file**
   - Save your chat history as a `.txt`, `.md`, or `.json` file
   - Drag and drop it into the chat, or use the attachment/upload button

3. **Reference in your message**
   - Mention what you need from the past chat
   - I can help extract or work with that information

4. **Use @-mentions** (if available)
   - Reference previous conversations or files using @

If you’re building a feature to upload past chats in your app, share details about:
- The platform/framework you’re using
- The format of the chat data
- Where you want to store or process it

Share the chat content or file, or describe what you need, and I can help.

---

**User**

i need the previous flutter code of internabot

---

**Cursor**


Searching for Flutter code related to "internabot" in the workspace.



No workspace directory found. I don't have access to previous chat history or files from past sessions.

To help restore the internabot Flutter code, please share:
1. What internabot does (features/functionality)
2. Any code snippets or file names you remember
3. Whether you have a backup or saved version

Alternatively, I can recreate it if you describe:
- The bot's purpose (e.g., internal company bot, chatbot, etc.)
- Key features (messaging, commands, integrations)
- UI/UX requirements
- Any specific APIs or services it uses

If you have the code saved somewhere, you can:
- Paste it here
- Upload the files
- Point me to the directory where it's stored

What would you like to do?

---

**User**

## *Product Vision*
An AI-powered mobile coaching app for 5th and 6th year medical students at FMPM Marrakech preparing for internship concours. The app systematically corrects exam copies with expert references, provides personalized study methodology guidance, answers questions in real-time, and helps students confidently choose their medical specialty. Success means measurably improved exam scores, high student engagement, and becoming the go-to prep tool that students can't imagine studying without.

---

## *Feature List*

### *Must-Have (V1)*
- *User Authentication*: Simple email/password signup with student verification (FMPM email optional for credibility)
- *Exam Copy Submission*: Photo upload or PDF of handwritten exam answers
- *AI-Powered Correction System*: 
  - Systematic scoring with breakdown by question
  - Expert medical references for each correction
  - Personalized feedback on methodology and approach
- *Study Chat Assistant*: Real-time Q&A for medical questions and study strategy
- *Progress Tracking Dashboard*: Score trends, weak areas, improvement metrics
- *Specialty Selection Guide*: AI-driven recommendations based on performance and interests
- *Notification System*: Reminders for study sessions, new corrections ready

### *Nice-to-Have (Future)*
- Question bank with practice exams
- Video explanations for complex topics
- Peer comparison (anonymized benchmarking)
- Study group matching
- Live expert Q&A sessions scheduling
- Flashcard generator from corrections
- Offline mode for reviewing past corrections

---

## *Content & AI Details*

### *Data Sources*
- FMPM internship exam question banks (your curated collection)
- Medical reference textbooks and guidelines (PDF format)
- Previous years' exam papers with model answers
- Student submission data (photos/PDFs of exam copies)

### *AI/LLM Strategy*
- *Primary LLM*: Claude (Anthropic) via API for:
  - Exam correction and grading
  - Reference citation
  - Chat-based tutoring
  - Methodology feedback
- *Alternative*: GPT-4 (OpenAI) as backup
- *Vision capability required* for handwriting recognition from photos
- *Prompt engineering*: Custom system prompts tailored to FMPM exam format and Moroccan medical education context

### *Compliance/Privacy*
- *GDPR-compliant* data handling (student data protection)
- *Encrypted storage* for exam submissions
- *No sharing* of student data with third parties
- Clear privacy policy stating AI usage and data retention
- Option for students to delete their data anytime

---

## *UX Notes*

### *Style Direction*
- *Clean, professional medical aesthetic*
- *Color palette*: 
  - Primary: Deep blue (#1E40AF) - trust, professionalism
  - Secondary: Bright green (#10B981) - growth, success
  - Accent: Warm orange (#F59E0B) - energy, motivation
  - Neutrals: White, light grays, dark text
- *Typography*: 
  - Headers: Poppins (modern, confident)
  - Body: Inter (readable, professional)
- *Tone*: Empowering, clear, supportive but not patronizing
- *UI mood*: Minimal distractions, focus-friendly, data-forward

### *Key Screens* (no wireframes yet)
1. Onboarding flow (3 screens max)
2. Dashboard (progress overview)
3. Exam submission (camera + upload)
4. Correction results (detailed breakdown)
5. Chat interface (AI tutor)
6. Profile & settings

---

## *Tech Decisions*

### *Flutter Setup*
- *Flutter version*: Stable channel (latest - currently 3.24+)
- *State management: **Riverpod* (modern, testable, scalable)
- *Storage*: 
  - *Local*: Hive or Isar for offline caching and user preferences
  - *Remote*: Firebase (Firestore for user data, Storage for exam photos)
- *Backend*: 
  - *Firebase* for auth, database, file storage
  - *Cloud Functions* (or simple Node.js API) for LLM API calls to keep keys secure
- *API Integration*: REST calls to Claude/OpenAI via your backend
- *Image handling*: image_picker package for camera/gallery
- *PDF handling*: pdf package for document generation/viewing

### *Architecture*
- *Clean architecture* pattern (presentation → domain → data layers)
- *Repository pattern* for data access
- *Dependency injection* via Riverpod

---

## *Milestones*

### *Phase 1: Foundation (Weeks 1-2)*
- [ ] Project setup, Firebase configuration
- [ ] Authentication flow (signup, login, password reset)
- [ ] Basic UI shell (navigation, placeholder screens)
- [ ] Backend API structure for LLM calls

### *Phase 2: Core Features (Weeks 3-5)*
- [ ] Exam submission flow (camera + upload)
- [ ] AI correction integration (send to backend → Claude API → return results)
- [ ] Display correction results with references
- [ ] Basic progress tracking

### *Phase 3: Enhanced Features (Weeks 6-7)*
- [ ] Chat interface with AI tutor
- [ ] Specialty selection guide
- [ ] Notifications system
- [ ] Dashboard with analytics

### *Phase 4: Polish & Launch (Week 8)*
- [ ] UI refinements, animations
- [ ] User testing with 5-10 beta students
- [ ] Bug fixes and performance optimization
- [ ] App Store / Play Store submission prep

*Target Launch*: End of Month 2 (soft launch to first 20 students)

---

## *Testing & Release*

### *Target Devices*
- *Primary*: Android (most FMPM students use Android)
- *Secondary*: iOS (for completeness)
- *Test devices*: Mid-range Android (e.g., Samsung A-series), iPhone 12+

### *QA Approach*
- Manual testing by you + 3-5 beta students
- Test scenarios: full user journey from signup → submission → correction → chat
- Firebase Crashlytics for error tracking

### *Distribution*
- *Beta*: Firebase App Distribution (Android) + TestFlight (iOS)
- *Launch*: Google Play Store (priority), Apple App Store
- *Initial rollout*: Invite-only to control quality and gather feedback

---

## *Constraints*

### *Budget*
- *Bootstrap mode*: <$500 initial investment
- *Firebase*: Free tier initially (Spark plan), upgrade to Blaze as needed
- *LLM API costs*: ~$50-100/month estimated (Claude API pricing)
- *No expensive third-party services* in V1

### *Time*
- *8 weeks to MVP* (working part-time around medical school schedule)
- *Priority*: Ship fast, iterate based on real student feedback

### *Team*
- *Solo developer* (you) for V1
- *VA hire* after first 10 paid users (for customer support, not development)

### *Must Avoid*
- *Complex ML models* (rely on API-based LLMs only)
- *Real-time video* (too bandwidth-heavy for Moroccan internet)
- *Over-engineering*: Keep it simple, ship working features first

---

## *Additional Context for Cursor*

- *Development style*: Pragmatic, bias toward action over perfection
- *Code preferences*: Clean, commented code; reusable components; easy to extend
- *Error handling*: Graceful failures with user-friendly messages (especially for API calls)
- *Performance*: Fast load times critical (students often on slower connections)
- *Localization*: French primary (medical terms), Arabic nice-to-have later

---

*Next Steps After Sharing This:*
1. Cursor will help scaffold the project structure
2. Start with authentication + basic UI
3. Integrate Firebase
4. Build exam submission flow
5. Connect AI correction via backend API

---

**Cursor**


Setting up the Flutter project structure for internabot with clean architecture and Riverpod, then implementing the core features.


```yaml
name: internabot
description: AI-powered mobile coaching app for medical students preparing for internship concours
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # State Management
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.3

  # Firebase
  firebase_core: ^2.24.2
  firebase_auth: ^4.15.3
  cloud_firestore: ^4.13.6
  firebase_storage: ^11.5.6
  firebase_messaging: ^14.7.9
  firebase_crashlytics: ^3.4.9

  # UI & Navigation
  go_router: ^13.0.0
  flutter_svg: ^2.0.9
  cached_network_image: ^3.3.1

  # Image & File Handling
  image_picker: ^1.0.7
  file_picker: ^6.1.1
  pdf: ^3.10.7
  path_provider: ^2.1.1

  # Storage
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1

  # Network
  http: ^1.1.2
  dio: ^5.4.0

  # Utilities
  intl: ^0.19.0
  uuid: ^4.2.1
  equatable: ^2.0.5
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

  # UI Components
  flutter_launcher_icons: ^0.13.1
  flutter_native_splash: ^2.3.7

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  riverpod_generator: ^2.3.9
  hive_generator: ^2.0.1
  isar_generator: ^3.1.0+1

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/

```

```markdown
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

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── core/
│   ├── theme/
│   ├── constants/
│   └── utils/
├── data/
│   ├── models/
│   ├── repositories/
│   └── datasources/
├── domain/
│   ├── entities/
│   └── usecases/
└── presentation/
    ├── features/
    │   ├── auth/
    │   ├── dashboard/
    │   ├── exam/
    │   ├── chat/
    │   └── specialty/
    ├── widgets/
    └── routes/
```

## License

Private project - All rights reserved

```


Creating the project structure and core files:



Creating the project structure using PowerShell-compatible commands and writing the core files:



Creating core Flutter files, starting with configuration and theme:


```yaml
name: internabot
description: AI-powered mobile coaching app for medical students preparing for internship concours
publish_to: 'none'
version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  # State Management
  flutter_riverpod: ^2.5.1
  riverpod_annotation: ^2.3.3

  # Firebase
  firebase_core: ^2.24.2
  firebase_auth: ^4.15.3
  cloud_firestore: ^4.13.6
  firebase_storage: ^11.5.6
  firebase_messaging: ^14.7.9
  firebase_crashlytics: ^3.4.9

  # UI & Navigation
  go_router: ^13.0.0
  flutter_svg: ^2.0.9
  cached_network_image: ^3.3.1

  # Image & File Handling
  image_picker: ^1.0.7
  file_picker: ^6.1.1
  pdf: ^3.10.7
  path_provider: ^2.1.1

  # Storage
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1

  # Network
  http: ^1.1.2
  dio: ^5.4.0

  # Utilities
  intl: ^0.19.0
  uuid: ^4.2.1
  equatable: ^2.0.5
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

  # UI Components
  flutter_launcher_icons: ^0.13.1
  flutter_native_splash: ^2.3.7

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^3.0.1
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  riverpod_generator: ^2.3.9
  hive_generator: ^2.0.1
  isar_generator: ^3.1.0+1

flutter:
  uses-material-design: true

  assets:
    - assets/images/
    - assets/icons/

```

```dart
import 'package:flutter/material.dart';

class AppTheme {
  // Color Palette
  static const Color primaryBlue = Color(0xFF1E40AF); // Deep blue - trust, professionalism
  static const Color secondaryGreen = Color(0xFF10B981); // Bright green - growth, success
  static const Color accentOrange = Color(0xFFF59E0B); // Warm orange - energy, motivation
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color neutralLightGray = Color(0xFFF3F4F6);
  static const Color neutralGray = Color(0xFF9CA3AF);
  static const Color neutralDarkGray = Color(0xFF4B5563);
  static const Color neutralBlack = Color(0xFF111827);

  // Typography
  static const String fontFamilyPoppins = 'Poppins';
  static const String fontFamilyInter = 'Inter';

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: primaryBlue,
        secondary: secondaryGreen,
        tertiary: accentOrange,
        surface: neutralWhite,
        background: neutralLightGray,
        error: Colors.red,
        onPrimary: neutralWhite,
        onSecondary: neutralWhite,
        onSurface: neutralBlack,
        onBackground: neutralBlack,
      ),
      scaffoldBackgroundColor: neutralLightGray,
      fontFamily: fontFamilyInter,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: neutralBlack,
        ),
        displayMedium: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: neutralBlack,
        ),
        displaySmall: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        headlineMedium: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        titleLarge: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: neutralBlack,
        ),
        bodyLarge: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: neutralBlack,
        ),
        bodyMedium: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: neutralDarkGray,
        ),
        bodySmall: TextStyle(
          fontFamily: fontFamilyInter,
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: neutralGray,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryBlue,
        foregroundColor: neutralWhite,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: fontFamilyPoppins,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: neutralWhite,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryBlue,
          foregroundColor: neutralWhite,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontFamily: fontFamilyPoppins,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: neutralWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: neutralGray),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: neutralGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: primaryBlue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      cardTheme: CardTheme(
        color: neutralWhite,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

```

```dart
class AppConstants {
  // App Info
  static const String appName = 'InternaBot';
  static const String appVersion = '1.0.0';

  // Firebase Collections
  static const String usersCollection = 'users';
  static const String examSubmissionsCollection = 'exam_submissions';
  static const String correctionsCollection = 'corrections';
  static const String chatMessagesCollection = 'chat_messages';

  // Storage Paths
  static const String examPhotosPath = 'exam_photos';
  static const String examPdfsPath = 'exam_pdfs';

  // API Endpoints (Backend)
  static const String baseUrl = 'https://your-backend-url.com/api';
  static const String correctionEndpoint = '/corrections';
  static const String chatEndpoint = '/chat';
  static const String specialtyRecommendationEndpoint = '/specialty/recommend';

  // Validation
  static const int minPasswordLength = 6;
  static const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String fmpmEmailPattern = r'^[\w-\.]+@fmpm\.ma$';

  // Limits
  static const int maxImageSizeMB = 10;
  static const int maxPdfSizeMB = 20;
  static const int maxChatHistoryLength = 100;

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration imageUploadTimeout = Duration(minutes: 2);
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/theme/app_theme.dart';
import 'presentation/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  await Firebase.initializeApp();
  
  // Initialize Hive for local storage
  await Hive.initFlutter();
  
  runApp(
    const ProviderScope(
      child: InternaBotApp(),
    ),
  );
}

class InternaBotApp extends StatelessWidget {
  const InternaBotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'InternaBot',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/auth/presentation/pages/login_page.dart';
import '../features/auth/presentation/pages/signup_page.dart';
import '../features/dashboard/presentation/pages/dashboard_page.dart';
import '../features/exam/presentation/pages/exam_submission_page.dart';
import '../features/exam/presentation/pages/correction_results_page.dart';
import '../features/chat/presentation/pages/chat_page.dart';
import '../features/specialty/presentation/pages/specialty_guide_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: '/exam/submit',
        builder: (context, state) => const ExamSubmissionPage(),
      ),
      GoRoute(
        path: '/exam/correction/:correctionId',
        builder: (context, state) {
          final correctionId = state.pathParameters['correctionId']!;
          return CorrectionResultsPage(correctionId: correctionId);
        },
      ),
      GoRoute(
        path: '/chat',
        builder: (context, state) => const ChatPage(),
      ),
      GoRoute(
        path: '/specialty',
        builder: (context, state) => const SpecialtyGuidePage(),
      ),
    ],
  );
}

```


Creating domain entities and data models:


```dart
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String email;
  final String? displayName;
  final bool isEmailVerified;
  final DateTime createdAt;
  final String? fmpmEmail;
  final int? year; // 5th or 6th year

  const UserEntity({
    required this.id,
    required this.email,
    this.displayName,
    required this.isEmailVerified,
    required this.createdAt,
    this.fmpmEmail,
    this.year,
  });

  @override
  List<Object?> get props => [id, email, displayName, isEmailVerified, createdAt, fmpmEmail, year];
}

```

```dart
import 'package:equatable/equatable.dart';

class ExamSubmissionEntity extends Equatable {
  final String id;
  final String userId;
  final String? imageUrl;
  final String? pdfUrl;
  final DateTime submittedAt;
  final SubmissionStatus status;
  final String? correctionId;

  const ExamSubmissionEntity({
    required this.id,
    required this.userId,
    this.imageUrl,
    this.pdfUrl,
    required this.submittedAt,
    required this.status,
    this.correctionId,
  });

  @override
  List<Object?> get props => [id, userId, imageUrl, pdfUrl, submittedAt, status, correctionId];
}

enum SubmissionStatus {
  pending,
  processing,
  completed,
  failed,
}

```

```dart
import 'package:equatable/equatable.dart';

class CorrectionEntity extends Equatable {
  final String id;
  final String submissionId;
  final String userId;
  final double overallScore;
  final List<QuestionCorrection> questionCorrections;
  final List<MedicalReference> references;
  final String methodologyFeedback;
  final DateTime correctedAt;

  const CorrectionEntity({
    required this.id,
    required this.submissionId,
    required this.userId,
    required this.overallScore,
    required this.questionCorrections,
    required this.references,
    required this.methodologyFeedback,
    required this.correctedAt,
  });

  @override
  List<Object?> get props => [
        id,
        submissionId,
        userId,
        overallScore,
        questionCorrections,
        references,
        methodologyFeedback,
        correctedAt,
      ];
}

class QuestionCorrection extends Equatable {
  final int questionNumber;
  final double score;
  final double maxScore;
  final String feedback;
  final List<String> strengths;
  final List<String> improvements;

  const QuestionCorrection({
    required this.questionNumber,
    required this.score,
    required this.maxScore,
    required this.feedback,
    required this.strengths,
    required this.improvements,
  });

  @override
  List<Object?> get props => [questionNumber, score, maxScore, feedback, strengths, improvements];
}

class MedicalReference extends Equatable {
  final String title;
  final String source;
  final String? pageNumber;
  final String? url;

  const MedicalReference({
    required this.title,
    required this.source,
    this.pageNumber,
    this.url,
  });

  @override
  List<Object?> get props => [title, source, pageNumber, url];
}

```

```dart
import 'package:equatable/equatable.dart';

class ChatMessageEntity extends Equatable {
  final String id;
  final String userId;
  final String content;
  final bool isUser;
  final DateTime timestamp;
  final String? referenceUrl;

  const ChatMessageEntity({
    required this.id,
    required this.userId,
    required this.content,
    required this.isUser,
    required this.timestamp,
    this.referenceUrl,
  });

  @override
  List<Object?> get props => [id, userId, content, isUser, timestamp, referenceUrl];
}

```

```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.email,
    super.displayName,
    required super.isEmailVerified,
    required super.createdAt,
    super.fmpmEmail,
    super.year,
  });

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel(
      id: doc.id,
      email: data['email'] as String,
      displayName: data['displayName'] as String?,
      isEmailVerified: data['isEmailVerified'] as bool? ?? false,
      createdAt: (data['createdAt'] as Timestamp).toDate(),
      fmpmEmail: data['fmpmEmail'] as String?,
      year: data['year'] as int?,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'email': email,
      'displayName': displayName,
      'isEmailVerified': isEmailVerified,
      'createdAt': Timestamp.fromDate(createdAt),
      'fmpmEmail': fmpmEmail,
      'year': year,
    };
  }

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      displayName: displayName,
      isEmailVerified: isEmailVerified,
      createdAt: createdAt,
      fmpmEmail: fmpmEmail,
      year: year,
    );
  }
}

```

```dart
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../domain/entities/correction_entity.dart';

class CorrectionModel extends CorrectionEntity {
  const CorrectionModel({
    required super.id,
    required super.submissionId,
    required super.userId,
    required super.overallScore,
    required super.questionCorrections,
    required super.references,
    required super.methodologyFeedback,
    required super.correctedAt,
  });

  factory CorrectionModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return CorrectionModel(
      id: doc.id,
      submissionId: data['submissionId'] as String,
      userId: data['userId'] as String,
      overallScore: (data['overallScore'] as num).toDouble(),
      questionCorrections: (data['questionCorrections'] as List)
          .map((q) => QuestionCorrection(
                questionNumber: q['questionNumber'] as int,
                score: (q['score'] as num).toDouble(),
                maxScore: (q['maxScore'] as num).toDouble(),
                feedback: q['feedback'] as String,
                strengths: List<String>.from(q['strengths'] as List),
                improvements: List<String>.from(q['improvements'] as List),
              ))
          .toList(),
      references: (data['references'] as List)
          .map((r) => MedicalReference(
                title: r['title'] as String,
                source: r['source'] as String,
                pageNumber: r['pageNumber'] as String?,
                url: r['url'] as String?,
              ))
          .toList(),
      methodologyFeedback: data['methodologyFeedback'] as String,
      correctedAt: (data['correctedAt'] as Timestamp).toDate(),
    );
  }

  factory CorrectionModel.fromJson(Map<String, dynamic> json) {
    return CorrectionModel(
      id: json['id'] as String,
      submissionId: json['submissionId'] as String,
      userId: json['userId'] as String,
      overallScore: (json['overallScore'] as num).toDouble(),
      questionCorrections: (json['questionCorrections'] as List)
          .map((q) => QuestionCorrection(
                questionNumber: q['questionNumber'] as int,
                score: (q['score'] as num).toDouble(),
                maxScore: (q['maxScore'] as num).toDouble(),
                feedback: q['feedback'] as String,
                strengths: List<String>.from(q['strengths'] as List),
                improvements: List<String>.from(q['improvements'] as List),
              ))
          .toList(),
      references: (json['references'] as List)
          .map((r) => MedicalReference(
                title: r['title'] as String,
                source: r['source'] as String,
                pageNumber: r['pageNumber'] as String?,
                url: r['url'] as String?,
              ))
          .toList(),
      methodologyFeedback: json['methodologyFeedback'] as String,
      correctedAt: DateTime.parse(json['correctedAt'] as String),
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'submissionId': submissionId,
      'userId': userId,
      'overallScore': overallScore,
      'questionCorrections': questionCorrections
          .map((q) => {
                'questionNumber': q.questionNumber,
                'score': q.score,
                'maxScore': q.maxScore,
                'feedback': q.feedback,
                'strengths': q.strengths,
                'improvements': q.improvements,
              })
          .toList(),
      'references': references
          .map((r) => {
                'title': r.title,
                'source': r.source,
                'pageNumber': r.pageNumber,
                'url': r.url,
              })
          .toList(),
      'methodologyFeedback': methodologyFeedback,
      'correctedAt': Timestamp.fromDate(correctedAt),
    };
  }

  CorrectionEntity toEntity() {
    return CorrectionEntity(
      id: id,
      submissionId: submissionId,
      userId: userId,
      overallScore: overallScore,
      questionCorrections: questionCorrections,
      references: references,
      methodologyFeedback: methodologyFeedback,
      correctedAt: correctedAt,
    );
  }
}

```


Creating repositories and data sources, then the authentication feature:


```dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/constants/app_constants.dart';

class AuthRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserCredential> signUp({
    required String email,
    required String password,
    String? displayName,
    String? fmpmEmail,
    int? year,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (userCredential.user != null) {
      // Update display name
      if (displayName != null) {
        await userCredential.user!.updateDisplayName(displayName);
      }

      // Create user document in Firestore
      await _firestore.collection(AppConstants.usersCollection).doc(userCredential.user!.uid).set({
        'email': email,
        'displayName': displayName,
        'isEmailVerified': false,
        'createdAt': FieldValue.serverTimestamp(),
        'fmpmEmail': fmpmEmail,
        'year': year,
      });
    }

    return userCredential;
  }

  Future<UserCredential> signIn({
    required String email,
    required String password,
  }) async {
    return await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  User? getCurrentUser() {
    return _auth.currentUser;
  }

  Stream<User?> get authStateChanges => _auth.authStateChanges();
}

```

```dart
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/entities/user_entity.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../../core/constants/app_constants.dart';

class AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  AuthRepository(this._remoteDataSource);

  Future<UserEntity> signUp({
    required String email,
    required String password,
    String? displayName,
    String? fmpmEmail,
    int? year,
  }) async {
    final userCredential = await _remoteDataSource.signUp(
      email: email,
      password: password,
      displayName: displayName,
      fmpmEmail: fmpmEmail,
      year: year,
    );

    final userDoc = await _firestore
        .collection(AppConstants.usersCollection)
        .doc(userCredential.user!.uid)
        .get();

    return UserModel.fromFirestore(userDoc).toEntity();
  }

  Future<UserEntity> signIn({
    required String email,
    required String password,
  }) async {
    final userCredential = await _remoteDataSource.signIn(
      email: email,
      password: password,
    );

    final userDoc = await _firestore
        .collection(AppConstants.usersCollection)
        .doc(userCredential.user!.uid)
        .get();

    return UserModel.fromFirestore(userDoc).toEntity();
  }

  Future<void> signOut() async {
    await _remoteDataSource.signOut();
  }

  Future<void> sendPasswordResetEmail(String email) async {
    await _remoteDataSource.sendPasswordResetEmail(email);
  }

  UserEntity? getCurrentUser() {
    final user = _remoteDataSource.getCurrentUser();
    if (user == null) return null;
    // Note: In a real app, you'd fetch from Firestore
    return UserEntity(
      id: user.uid,
      email: user.email ?? '',
      displayName: user.displayName,
      isEmailVerified: user.emailVerified,
      createdAt: user.metadata.creationTime ?? DateTime.now(),
    );
  }

  Stream<User?> get authStateChanges => _remoteDataSource.authStateChanges;
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_providers.dart';
import '../widgets/auth_text_field.dart';
import '../../../../core/theme/app_theme.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await ref.read(authRepositoryProvider).signIn(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );

      if (mounted) {
        context.go('/dashboard');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur de connexion: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 60),
                // Logo/Title
                Text(
                  'InternaBot',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: AppTheme.primaryBlue,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Votre coach IA pour le concours d\'internat',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                // Email Field
                AuthTextField(
                  controller: _emailController,
                  label: 'Email',
                  hint: 'votre.email@example.com',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return 'Email invalide';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Password Field
                AuthTextField(
                  controller: _passwordController,
                  label: 'Mot de passe',
                  hint: '••••••••',
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre mot de passe';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // TODO: Implement password reset
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Fonctionnalité à venir')),
                      );
                    },
                    child: const Text('Mot de passe oublié?'),
                  ),
                ),
                const SizedBox(height: 24),
                // Login Button
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleLogin,
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('Se connecter'),
                ),
                const SizedBox(height: 16),
                // Sign Up Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pas encore de compte? ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () => context.go('/signup'),
                      child: const Text('S\'inscrire'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_providers.dart';
import '../widgets/auth_text_field.dart';
import '../../../../core/theme/app_theme.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({super.key});

  @override
  ConsumerState<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _displayNameController = TextEditingController();
  final _fmpmEmailController = TextEditingController();
  final _yearController = TextEditingController();
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _displayNameController.dispose();
    _fmpmEmailController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      await ref.read(authRepositoryProvider).signUp(
            email: _emailController.text.trim(),
            password: _passwordController.text,
            displayName: _displayNameController.text.trim().isEmpty
                ? null
                : _displayNameController.text.trim(),
            fmpmEmail: _fmpmEmailController.text.trim().isEmpty
                ? null
                : _fmpmEmailController.text.trim(),
            year: _yearController.text.trim().isEmpty
                ? null
                : int.tryParse(_yearController.text.trim()),
          );

      if (mounted) {
        context.go('/dashboard');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur d\'inscription: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/login'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                Text(
                  'Créez votre compte',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 8),
                Text(
                  'Commencez votre préparation au concours d\'internat',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 32),
                // Display Name
                AuthTextField(
                  controller: _displayNameController,
                  label: 'Nom complet (optionnel)',
                  hint: 'Votre nom',
                ),
                const SizedBox(height: 16),
                // Email
                AuthTextField(
                  controller: _emailController,
                  label: 'Email *',
                  hint: 'votre.email@example.com',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer votre email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return 'Email invalide';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // FMPM Email (optional)
                AuthTextField(
                  controller: _fmpmEmailController,
                  label: 'Email FMPM (optionnel)',
                  hint: 'nom@fmpm.ma',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        !RegExp(r'^[\w-\.]+@fmpm\.ma$').hasMatch(value)) {
                      return 'Email FMPM invalide';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Year
                AuthTextField(
                  controller: _yearController,
                  label: 'Année (optionnel)',
                  hint: '5 ou 6',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value != null &&
                        value.isNotEmpty &&
                        (value != '5' && value != '6')) {
                      return 'Entrez 5 ou 6';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Password
                AuthTextField(
                  controller: _passwordController,
                  label: 'Mot de passe *',
                  hint: '••••••••',
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez entrer un mot de passe';
                    }
                    if (value.length < 6) {
                      return 'Le mot de passe doit contenir au moins 6 caractères';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                // Confirm Password
                AuthTextField(
                  controller: _confirmPasswordController,
                  label: 'Confirmer le mot de passe *',
                  hint: '••••••••',
                  obscureText: _obscureConfirmPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() => _obscureConfirmPassword = !_obscureConfirmPassword);
                    },
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez confirmer votre mot de passe';
                    }
                    if (value != _passwordController.text) {
                      return 'Les mots de passe ne correspondent pas';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),
                // Sign Up Button
                ElevatedButton(
                  onPressed: _isLoading ? null : _handleSignUp,
                  child: _isLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Text('S\'inscrire'),
                ),
                const SizedBox(height: 16),
                // Login Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Déjà un compte? ',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextButton(
                      onPressed: () => context.go('/login'),
                      child: const Text('Se connecter'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final bool obscureText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hint,
    this.obscureText = false,
    this.keyboardType,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: suffixIcon,
      ),
    );
  }
}

```

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../data/repositories/auth_repository.dart';
import '../../../../data/datasources/auth_remote_datasource.dart';

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource();
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(authRemoteDataSourceProvider));
});

```


Creating the exam submission feature and dashboard:


```dart
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import '../../../../core/theme/app_theme.dart';

class ExamSubmissionPage extends ConsumerStatefulWidget {
  const ExamSubmissionPage({super.key});

  @override
  ConsumerState<ExamSubmissionPage> createState() => _ExamSubmissionPageState();
}

class _ExamSubmissionPageState extends ConsumerState<ExamSubmissionPage> {
  File? _selectedImage;
  File? _selectedPdf;
  bool _isUploading = false;
  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
          _selectedPdf = null; // Clear PDF if image is selected
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _pickImageFromGallery() async {
    try {
      final XFile? image = await _imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1920,
        maxHeight: 1080,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
          _selectedPdf = null;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _pickPdf() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );

      if (result != null && result.files.single.path != null) {
        setState(() {
          _selectedPdf = File(result.files.single.path!);
          _selectedImage = null; // Clear image if PDF is selected
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur: ${e.toString()}')),
        );
      }
    }
  }

  Future<void> _submitExam() async {
    if (_selectedImage == null && _selectedPdf == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veuillez sélectionner une image ou un PDF')),
      );
      return;
    }

    setState(() => _isUploading = true);

    try {
      // TODO: Implement actual upload to Firebase Storage and submission creation
      await Future.delayed(const Duration(seconds: 2)); // Simulate upload

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Copie d\'examen soumise avec succès!'),
            backgroundColor: AppTheme.secondaryGreen,
          ),
        );
        Navigator.of(context).pop();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erreur lors de la soumission: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isUploading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soumettre une copie'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Soumettez votre copie d\'examen',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 8),
              Text(
                'Prenez une photo ou téléchargez un PDF de votre copie manuscrite',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 32),
              // Image Selection
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Photo de la copie',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                      if (_selectedImage != null) ...[
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppTheme.neutralGray),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.file(
                              _selectedImage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: _pickImage,
                          icon: const Icon(Icons.camera_alt),
                          label: const Text('Reprendre une photo'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.accentOrange,
                          ),
                        ),
                      ] else ...[
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: _pickImage,
                                icon: const Icon(Icons.camera_alt),
                                label: const Text('Appareil photo'),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: _pickImageFromGallery,
                                icon: const Icon(Icons.photo_library),
                                label: const Text('Galerie'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // PDF Selection
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Ou téléchargez un PDF',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                      if (_selectedPdf != null) ...[
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppTheme.neutralLightGray,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(Icons.picture_as_pdf, color: Colors.red),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  _selectedPdf!.path.split('/').last,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: _pickPdf,
                          icon: const Icon(Icons.file_upload),
                          label: const Text('Changer le fichier'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppTheme.accentOrange,
                          ),
                        ),
                      ] else ...[
                        OutlinedButton.icon(
                          onPressed: _pickPdf,
                          icon: const Icon(Icons.file_upload),
                          label: const Text('Sélectionner un PDF'),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // Submit Button
              ElevatedButton(
                onPressed: _isUploading ? null : _submitExam,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: _isUploading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text('Soumettre pour correction'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../domain/entities/correction_entity.dart';

class CorrectionResultsPage extends ConsumerStatefulWidget {
  final String correctionId;

  const CorrectionResultsPage({
    super.key,
    required this.correctionId,
  });

  @override
  ConsumerState<CorrectionResultsPage> createState() => _CorrectionResultsPageState();
}

class _CorrectionResultsPageState extends ConsumerState<CorrectionResultsPage> {
  // TODO: Load correction from repository using correctionId

  @override
  Widget build(BuildContext context) {
    // Mock data for demonstration
    final mockCorrection = CorrectionEntity(
      id: widget.correctionId,
      submissionId: 'submission_123',
      userId: 'user_123',
      overallScore: 75.5,
      questionCorrections: [
        QuestionCorrection(
          questionNumber: 1,
          score: 8.0,
          maxScore: 10.0,
          feedback: 'Bonne compréhension du concept, mais manque de détails cliniques.',
          strengths: ['Structure claire', 'Terminologie correcte'],
          improvements: ['Ajouter des exemples cliniques', 'Détailler la physiopathologie'],
        ),
        QuestionCorrection(
          questionNumber: 2,
          score: 7.5,
          maxScore: 10.0,
          feedback: 'Réponse partiellement correcte.',
          strengths: ['Approche méthodique'],
          improvements: ['Revoir les mécanismes d\'action'],
        ),
      ],
      references: [
        MedicalReference(
          title: 'Harrison\'s Principles of Internal Medicine',
          source: 'Harrison\'s',
          pageNumber: '245-250',
        ),
        MedicalReference(
          title: 'Guide de l\'internat',
          source: 'FMPM',
          pageNumber: '120',
        ),
      ],
      methodologyFeedback:
          'Votre approche est structurée. Continuez à développer vos réponses avec plus de détails cliniques et de références.',
      correctedAt: DateTime.now(),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats de correction'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Overall Score Card
            Card(
              color: AppTheme.primaryBlue,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    Text(
                      'Score Global',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: AppTheme.neutralWhite,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${mockCorrection.overallScore.toStringAsFixed(1)} / 100',
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                            color: AppTheme.neutralWhite,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Question Corrections
            Text(
              'Détails par question',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ...mockCorrection.questionCorrections.map((qc) => Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Question ${qc.questionNumber}',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: qc.score / qc.maxScore >= 0.7
                                    ? AppTheme.secondaryGreen
                                    : AppTheme.accentOrange,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                '${qc.score.toStringAsFixed(1)} / ${qc.maxScore.toStringAsFixed(1)}',
                                style: const TextStyle(
                                  color: AppTheme.neutralWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          qc.feedback,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (qc.strengths.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: AppTheme.secondaryGreen,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Points forts:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    ...qc.strengths.map(
                                      (s) => Text('• $s'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (qc.improvements.isNotEmpty) ...[
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.trending_up,
                                color: AppTheme.accentOrange,
                                size: 20,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'À améliorer:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    ...qc.improvements.map(
                                      (i) => Text('• $i'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ],
                    ),
                  ),
                )),
            const SizedBox(height: 24),
            // References
            Text(
              'Références médicales',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ...mockCorrection.references.map((ref) => Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: const Icon(Icons.book, color: AppTheme.primaryBlue),
                    title: Text(ref.title),
                    subtitle: Text('${ref.source}${ref.pageNumber != null ? ' - Page ${ref.pageNumber}' : ''}'),
                    trailing: ref.url != null
                        ? IconButton(
                            icon: const Icon(Icons.open_in_new),
                            onPressed: () {
                              // TODO: Open URL
                            },
                          )
                        : null,
                  ),
                )),
            const SizedBox(height: 24),
            // Methodology Feedback
            Card(
              color: AppTheme.neutralLightGray,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.lightbulb,
                          color: AppTheme.accentOrange,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Conseils méthodologiques',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      mockCorrection.methodologyFeedback,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';

class DashboardPage extends ConsumerStatefulWidget {
  const DashboardPage({super.key});

  @override
  ConsumerState<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends ConsumerState<DashboardPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const _HomeTab(),
    const _ProgressTab(),
    const _ChatTab(),
    const _ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppTheme.primaryBlue,
        unselectedItemColor: AppTheme.neutralGray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Progrès',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

class _HomeTab extends StatelessWidget {
  const _HomeTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InternaBot'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Show notifications
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Welcome Card
            Card(
              color: AppTheme.primaryBlue,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bienvenue!',
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            color: AppTheme.neutralWhite,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Préparez-vous efficacement pour le concours d\'internat',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.neutralWhite,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Quick Actions
            Text(
              'Actions rapides',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.2,
              children: [
                _ActionCard(
                  icon: Icons.camera_alt,
                  title: 'Soumettre une copie',
                  color: AppTheme.secondaryGreen,
                  onTap: () => context.push('/exam/submit'),
                ),
                _ActionCard(
                  icon: Icons.chat_bubble,
                  title: 'Chat avec l\'IA',
                  color: AppTheme.accentOrange,
                  onTap: () => context.push('/chat'),
                ),
                _ActionCard(
                  icon: Icons.trending_up,
                  title: 'Mes progrès',
                  color: AppTheme.primaryBlue,
                  onTap: () {
                    // Navigate to progress tab
                  },
                ),
                _ActionCard(
                  icon: Icons.medical_services,
                  title: 'Guide spécialités',
                  color: AppTheme.secondaryGreen,
                  onTap: () => context.push('/specialty'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Recent Corrections
            Text(
              'Corrections récentes',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            // TODO: Load actual corrections
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: AppTheme.secondaryGreen,
                  child: Icon(Icons.check_circle, color: AppTheme.neutralWhite),
                ),
                title: const Text('Correction #1'),
                subtitle: const Text('Score: 75.5/100'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  context.push('/exam/correction/correction_123');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const _ActionCard({
    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProgressTab extends StatelessWidget {
  const _ProgressTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mes progrès')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Score Trend Card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Évolution des scores',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 20),
                    // TODO: Add chart widget
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: AppTheme.neutralLightGray,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Graphique à venir',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Statistics
            Text(
              'Statistiques',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            '12',
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppTheme.primaryBlue,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Copies corrigées',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text(
                            '78.5',
                            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppTheme.secondaryGreen,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Score moyen',
                            style: Theme.of(context).textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatTab extends StatelessWidget {
  const _ChatTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/chat'),
          child: const Text('Ouvrir le chat'),
        ),
      ),
    );
  }
}

class _ProfileTab extends StatelessWidget {
  const _ProfileTab();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text('Nom de l\'utilisateur'),
              subtitle: const Text('email@example.com'),
            ),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Paramètres'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // TODO: Navigate to settings
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('Aide'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // TODO: Navigate to help
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Déconnexion', style: TextStyle(color: Colors.red)),
            onTap: () {
              // TODO: Implement logout
              context.go('/login');
            },
          ),
        ],
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_theme.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];
  bool _isLoading = false;

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final text = _messageController.text.trim();
    if (text.isEmpty || _isLoading) return;

    // Add user message
    setState(() {
      _messages.add(ChatMessage(
        content: text,
        isUser: true,
        timestamp: DateTime.now(),
      ));
    });

    _messageController.clear();
    _scrollToBottom();

    // Simulate AI response
    setState(() => _isLoading = true);

    // TODO: Call actual AI API
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() {
        _messages.add(ChatMessage(
          content:
              'Merci pour votre question. Voici une réponse détaillée basée sur les références médicales standard...',
          isUser: false,
          timestamp: DateTime.now(),
        ));
        _isLoading = false;
      });
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat avec l\'IA'),
        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all),
            onPressed: () {
              setState(() => _messages.clear());
            },
            tooltip: 'Effacer l\'historique',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _messages.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat_bubble_outline,
                          size: 64,
                          color: AppTheme.neutralGray,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Posez votre question',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'L\'IA vous aidera avec vos questions médicales',
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: _messages.length + (_isLoading ? 1 : 0),
                    itemBuilder: (context, index) {
                      if (index == _messages.length) {
                        return const _LoadingIndicator();
                      }
                      return _ChatBubble(message: _messages[index]);
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppTheme.neutralWhite,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Tapez votre question...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                      ),
                      maxLines: null,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  CircleAvatar(
                    backgroundColor: AppTheme.primaryBlue,
                    child: IconButton(
                      icon: _isLoading
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppTheme.neutralWhite,
                                ),
                              ),
                            )
                          : const Icon(Icons.send, color: AppTheme.neutralWhite),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage {
  final String content;
  final bool isUser;
  final DateTime timestamp;

  ChatMessage({
    required this.content,
    required this.isUser,
    required this.timestamp,
  });
}

class _ChatBubble extends StatelessWidget {
  final ChatMessage message;

  const _ChatBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: message.isUser ? AppTheme.primaryBlue : AppTheme.neutralWhite,
          borderRadius: BorderRadius.circular(16).copyWith(
            bottomRight: message.isUser ? const Radius.circular(4) : null,
            bottomLeft: !message.isUser ? const Radius.circular(4) : null,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              message.content,
              style: TextStyle(
                color: message.isUser ? AppTheme.neutralWhite : AppTheme.neutralBlack,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '${message.timestamp.hour.toString().padLeft(2, '0')}:${message.timestamp.minute.toString().padLeft(2, '0')}',
              style: TextStyle(
                color: message.isUser
                    ? AppTheme.neutralWhite.withOpacity(0.7)
                    : AppTheme.neutralGray,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppTheme.neutralWhite,
          borderRadius: BorderRadius.circular(16).copyWith(
            bottomLeft: const Radius.circular(4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryBlue),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'L\'IA réfléchit...',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

```

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_theme.dart';

class SpecialtyGuidePage extends ConsumerStatefulWidget {
  const SpecialtyGuidePage({super.key});

  @override
  ConsumerState<SpecialtyGuidePage> createState() => _SpecialtyGuidePageState();
}

class _SpecialtyGuidePageState extends ConsumerState<SpecialtyGuidePage> {
  bool _isLoading = false;
  String? _recommendedSpecialty;
  String? _recommendationReason;

  Future<void> _getRecommendation() async {
    setState(() {
      _isLoading = true;
      _recommendedSpecialty = null;
      _recommendationReason = null;
    });

    // TODO: Call actual AI API for specialty recommendation
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() {
        _recommendedSpecialty = 'Médecine Interne';
        _recommendationReason =
            'Basé sur vos performances et intérêts, la médecine interne semble être un excellent choix. Vos scores dans les domaines de la pathologie générale et votre approche méthodique correspondent bien à cette spécialité.';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide des spécialités'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Trouvez votre spécialité',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Obtenez des recommandations personnalisées basées sur vos performances',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Recommandation IA',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 16),
                    if (_isLoading)
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    else if (_recommendedSpecialty != null) ...[
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: AppTheme.secondaryGreen.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppTheme.secondaryGreen),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.medical_services,
                              size: 48,
                              color: AppTheme.secondaryGreen,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              _recommendedSpecialty!,
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                    color: AppTheme.secondaryGreen,
                                    fontWeight: FontWeight.bold,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              _recommendationReason!,
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ] else
                      Text(
                        'Cliquez sur le bouton ci-dessous pour obtenir une recommandation personnalisée basée sur vos performances et vos intérêts.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: _isLoading ? null : _getRecommendation,
                      icon: const Icon(Icons.auto_awesome),
                      label: const Text('Obtenir une recommandation'),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Spécialités disponibles',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            // Specialty List
            ..._specialties.map((specialty) => Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppTheme.primaryBlue.withOpacity(0.1),
                      child: Icon(
                        Icons.medical_services,
                        color: AppTheme.primaryBlue,
                      ),
                    ),
                    title: Text(specialty),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      // TODO: Show specialty details
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Détails de $specialty à venir')),
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }

  static const List<String> _specialties = [
    'Médecine Interne',
    'Chirurgie Générale',
    'Pédiatrie',
    'Gynécologie-Obstétrique',
    'Anesthésie-Réanimation',
    'Radiologie',
    'Dermatologie',
    'Ophtalmologie',
    'ORL',
    'Psychiatrie',
    'Neurologie',
    'Cardiologie',
  ];
}

```


Adding supporting files and configuration:


```markdown
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

```

```ignore
# Miscellaneous
*.class
*.log
*.pyc
*.swp
.DS_Store
.atom/
.buildlog/
.history
.svn/
migrate_working_dir/

# IntelliJ related
*.iml
*.ipr
*.iws
.idea/

# The .vscode folder contains launch configuration and tasks you configure in
# VS Code which you may wish to be included in version control, so this line
# is commented out by default.
#.vscode/

# Flutter/Dart/Pub related
**/doc/api/
**/ios/Flutter/.last_build_id
.dart_tool/
.flutter-plugins
.flutter-plugins-dependencies
.packages
.pub-cache/
.pub/
/build/

# Symbolication related
app.*.symbols

# Obfuscation related
app.*.map.json

# Android Studio will place build artifacts here
/android/app/debug
/android/app/profile
/android/app/release

# Firebase
**/google-services.json
**/GoogleService-Info.plist
firebase_options.dart

# Environment variables
.env
.env.local

# Generated files
*.g.dart
*.freezed.dart
*.config.dart

```

```yaml
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    - prefer_const_constructors
    - prefer_const_literals_to_create_immutables
    - avoid_print
    - prefer_single_quotes
    - always_declare_return_types
    - avoid_empty_else
    - avoid_relative_lib_imports
    - prefer_final_fields
    - prefer_final_locals

analyzer:
  exclude:
    - "**/*.g.dart"
    - "**/*.freezed.dart"
  errors:
    invalid_annotation_target: ignore

```

```dart
class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer votre email';
    }
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
      return 'Email invalide';
    }
    return null;
  }

  static String? fmpmEmail(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!RegExp(r'^[\w-\.]+@fmpm\.ma$').hasMatch(value)) {
        return 'Email FMPM invalide';
      }
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Veuillez entrer un mot de passe';
    }
    if (value.length < 6) {
      return 'Le mot de passe doit contenir au moins 6 caractères';
    }
    return null;
  }

  static String? confirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'Veuillez confirmer votre mot de passe';
    }
    if (value != password) {
      return 'Les mots de passe ne correspondent pas';
    }
    return null;
  }

  static String? required(String? value, {String? fieldName}) {
    if (value == null || value.isEmpty) {
      return '${fieldName ?? 'Ce champ'} est requis';
    }
    return null;
  }

  static String? year(String? value) {
    if (value != null && value.isNotEmpty) {
      if (value != '5' && value != '6') {
        return 'Entrez 5 ou 6';
      }
    }
    return null;
  }
}

```


Created the Flutter project structure for InternaBot. Summary:

## Project structure

### Core architecture
- Clean architecture: presentation → domain → data layers
- State management: Riverpod
- Navigation: GoRouter
- Theme: color palette and typography

### Features implemented

1. Authentication
   - Login page with email/password
   - Signup page with FMPM email validation
   - Firebase Auth integration structure

2. Dashboard
   - Home tab with quick actions
   - Progress tracking tab
   - Chat tab navigation
   - Profile tab

3. Exam submission
   - Camera integration for photo capture
   - Gallery picker
   - PDF file picker
   - Upload UI (backend integration pending)

4. Correction results
   - Score display
   - Question-by-question breakdown
   - Medical references display
   - Methodology feedback section

5. Chat interface
   - Real-time chat UI
   - Message bubbles
   - Loading indicators
   - Clear history functionality

6. Specialty guide
   - AI recommendation UI
   - Specialty list
   - Recommendation display

### Next steps

1. Backend setup: create a Node.js/Cloud Functions backend to:
   - Handle Claude API calls securely
   - Process image/PDF uploads
   - Store corrections in Firestore

2. Firebase configuration:
   ```bash
   flutterfire configure
   ```
   - Add `google-services.json` and `GoogleService-Info.plist`
   - Configure Firestore rules
   - Set up Storage rules

3. Run code generation:
   ```bash
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Update constants:
   - Set your backend URL in `lib/core/constants/app_constants.dart`

The project follows the specifications with a clean, maintainable structure. The UI uses the specified color palette and typography. Backend API integration points are marked with TODO comments.

Should I add any specific features or help with the backend integration?

```shellscript
   flutterfire configure
```

```shellscript
   flutter pub get
   flutter pub run build_runner build --delete-conflicting-outputs
```

