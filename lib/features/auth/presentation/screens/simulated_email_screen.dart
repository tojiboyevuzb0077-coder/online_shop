import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/custom_button.dart';

class SimulatedEmailScreen extends StatelessWidget {
  const SimulatedEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Email - Recovery Account', style: TextStyle(fontSize: 15)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: AppTheme.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Text('S', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Shopin', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      Text('Recover account: 17:55', style: TextStyle(color: AppTheme.textSecondary, fontSize: 12)),
                    ],
                  ),
                ],
              ),
              const Divider(height: 32),
              const Text(
                'Reset your Shopin password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppTheme.textPrimary),
              ),
              const SizedBox(height: 16),
              const Text(
                'Hi Daniel,\n\nWe\'ve received a request to reset your password.\n\nClick the button below to setup a new password.',
                style: TextStyle(color: AppTheme.textSecondary, height: 1.5, fontSize: 14),
              ),
              const SizedBox(height: 32),
              CustomButton(
                text: 'Reset Password',
                onPressed: () => context.push('/new-password'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
