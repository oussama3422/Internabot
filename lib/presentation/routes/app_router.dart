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

