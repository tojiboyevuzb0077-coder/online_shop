import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/constants/app_constants.dart';
import '../../domain/models/user_model.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthLocalDatasource implements AuthRepository {
  @override
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(AppConstants.keyIsLoggedIn) ?? false;
  }

  @override
  Future<UserModel?> signIn(String email, String password) async {
    // Simulated network delay & auth validation
    await Future.delayed(const Duration(seconds: 1));
    if (email.isEmpty || password.isEmpty) {
      throw Exception('Email and password cannot be empty');
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyIsLoggedIn, true);
    await prefs.setString(AppConstants.keyUserEmail, email);
    await prefs.setString(AppConstants.keyUserName, 'John Doe');
    return UserModel(id: '1', name: 'John Doe', email: email);
  }

  @override
  Future<UserModel?> signUp(String name, String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email.isEmpty || password.isEmpty || name.isEmpty) {
      throw Exception('All fields are required');
    }
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyIsLoggedIn, true);
    await prefs.setString(AppConstants.keyUserEmail, email);
    await prefs.setString(AppConstants.keyUserName, name);
    return UserModel(id: '1', name: name, email: email);
  }

  @override
  Future<UserModel?> signInWithFacebook() async {
    await Future.delayed(const Duration(seconds: 1));
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyIsLoggedIn, true);
    await prefs.setString(AppConstants.keyUserEmail, 'facebook.user@shopin.com');
    await prefs.setString(AppConstants.keyUserName, 'Facebook User');
    return UserModel(id: 'fb_1', name: 'Facebook User', email: 'facebook.user@shopin.com');
  }

  @override
  Future<void> sendPasswordReset(String email) async {
    await Future.delayed(const Duration(seconds: 1));
    if (email.isEmpty) throw Exception('Email is required');
  }

  @override
  Future<void> resetPassword(String newPassword) async {
    await Future.delayed(const Duration(seconds: 1));
    if (newPassword.length < 6) throw Exception('Password must be at least 6 characters');
  }

  @override
  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyIsLoggedIn, false);
    await prefs.remove(AppConstants.keyUserEmail);
    await prefs.remove(AppConstants.keyUserName);
  }
}
