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

