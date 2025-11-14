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

