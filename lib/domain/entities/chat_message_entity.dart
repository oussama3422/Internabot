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

