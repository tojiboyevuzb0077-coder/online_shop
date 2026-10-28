class ShippingAddress {
  final String name;
  final String address;
  final String city;
  final String zip;
  final String phone;

  ShippingAddress({
    required this.name,
    required this.address,
    required this.city,
    required this.zip,
    required this.phone,
  });
}

class PaymentDetails {
  final String method; // PayPal, MasterCard, Visa
  final String cardNumber;
  final String expiryDate;
  final String cvv;

  PaymentDetails({
    required this.method,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  });
}
