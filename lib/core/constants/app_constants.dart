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

