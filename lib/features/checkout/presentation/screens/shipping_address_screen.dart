import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/underline_text_field.dart';
import '../../domain/models/order_model.dart';
import '../controllers/checkout_controller.dart';

class ShippingAddressScreen extends ConsumerStatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  ConsumerState<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends ConsumerState<ShippingAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final _countryController = TextEditingController(text: 'Germany');
  final _cityController = TextEditingController(text: 'Berlin');
  final _zipController = TextEditingController(text: '10116');
  final _streetController = TextEditingController(text: 'Schönhauser Str 25');

  @override
  void dispose() {
    _countryController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _streetController.dispose();
    super.dispose();
  }

  void _handleNext() {
    if (_formKey.currentState!.validate()) {
      final address = ShippingAddress(
        name: 'Daniel Cheesen',
        address: _streetController.text.trim(),
        city: _cityController.text.trim(),
        zip: _zipController.text.trim(),
        phone: '+49 30 123456',
      );
      ref.read(shippingAddressProvider.notifier).state = address;
      context.push('/checkout/payment');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping Adress'),
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
                UnderlineTextField(
                  label: 'Country',
                  controller: _countryController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'Town / City',
                  controller: _cityController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'ZIP',
                  controller: _zipController,
                  keyboardType: TextInputType.number,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                UnderlineTextField(
                  label: 'Street',
                  controller: _streetController,
                  validator: (v) => v!.isEmpty ? 'Field required' : null,
                ),
                const SizedBox(height: 16),
                const Text(
                  'This bill will be your delivery address.\nThis bill will be your delivery address.',
                  style: TextStyle(color: AppTheme.textSecondary, fontSize: 12, height: 1.4),
                ),
                const SizedBox(height: 48),
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
