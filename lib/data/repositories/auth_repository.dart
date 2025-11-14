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

