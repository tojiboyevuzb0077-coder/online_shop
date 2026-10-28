import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/underline_text_field.dart';
import '../../domain/models/order_model.dart';
import '../controllers/checkout_controller.dart';

class PaymentMethodScreen extends ConsumerStatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  ConsumerState<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends ConsumerState<PaymentMethodScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedMethod = 'MasterCard';
  final _nameController = TextEditingController(text: 'Gabriel Cheesen\'n');
  final _cardNumberController = TextEditingController(text: '**** **** **** 5708');
  final _expiryController = TextEditingController(text: '08/23');
  final _cvvController = TextEditingController(text: '456');
  bool _isDefault = true;

  @override
  void dispose() {
    _nameController.dispose();
    _cardNumberController.dispose();
    _expiryController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (_formKey.currentState!.validate()) {
      final payment = PaymentDetails(
        method: _selectedMethod,
        cardNumber: _cardNumberController.text.trim(),
        expiryDate: _expiryController.text.trim(),
        cvv: _cvvController.text.trim(),
      );
      ref.read(paymentDetailsProvider.notifier).state = payment;
      context.push('/checkout/summary');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Payment Method logos selector
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: ['PayPal', 'MasterCard', 'Visa'].map((method) {
                    final isSelected = _selectedMethod == method;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedMethod = method),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.grey.shade100 : Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: isSelected ? AppTheme.primaryColor : Colors.grey.shade300,
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: Text(
                          method,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isSelected ? AppTheme.primaryColor : AppTheme.textSecondary,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 24),
                UnderlineTextField(
                  label: 'Name',
                  controller: _nameController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'Card number',
                  controller: _cardNumberController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'Expiry date',
                  controller: _expiryController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'CVV',
                  controller: _cvvController,
                  obscureText: true,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: _isDefault,
                      onChanged: (v) => setState(() => _isDefault = v ?? true),
                      activeColor: AppTheme.primaryColor,
                    ),
                    const Text('Set as your default payment method', style: TextStyle(fontSize: 13, color: AppTheme.textSecondary)),
                  ],
                ),
                const SizedBox(height: 32),
                CustomButton(
                  text: 'Next',
                  onPressed: _handleNext,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
