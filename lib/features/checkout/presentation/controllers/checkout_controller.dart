import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/order_model.dart';

final shippingAddressProvider = StateProvider<ShippingAddress?>((ref) => null);
final paymentDetailsProvider = StateProvider<PaymentDetails?>((ref) => null);
