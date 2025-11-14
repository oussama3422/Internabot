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

