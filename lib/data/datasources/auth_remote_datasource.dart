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

