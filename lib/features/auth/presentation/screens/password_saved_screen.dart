import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/blob_background.dart';
import '../../../../shared/widgets/custom_button.dart';

class PasswordSavedScreen extends StatelessWidget {
  const PasswordSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlobBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Text(
                'New Password',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppTheme.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16),
              const Text(
                'You successfully reset your password.\nPlease use your new password to sign in.',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppTheme.textSecondary, fontSize: 14, height: 1.4),
              ),
              const Spacer(),
              CustomButton(
                text: 'Sign In',
                onPressed: () => context.go('/signin'),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
