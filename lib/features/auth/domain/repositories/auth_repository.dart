import '../models/user_model.dart';

abstract class AuthRepository {
  Future<bool> isLoggedIn();
  Future<UserModel?> signIn(String email, String password);
  Future<UserModel?> signUp(String name, String email, String password);
  Future<UserModel?> signInWithFacebook();
  Future<void> sendPasswordReset(String email);
  Future<void> resetPassword(String newPassword);
  Future<void> signOut();
}
