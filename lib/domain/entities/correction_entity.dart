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

