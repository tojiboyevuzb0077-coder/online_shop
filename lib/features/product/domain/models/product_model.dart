import 'review_model.dart';

class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final double rating;
  final String imageUrl;
  final String description;
  final List<Review> reviews;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.rating,
    required this.imageUrl,
    required this.description,
    required this.reviews,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'category': category,
        'price': price,
        'rating': rating,
        'imageUrl': imageUrl,
        'description': description,
        'reviews': reviews.map((r) => r.toJson()).toList(),
      };

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] ?? '',
        name: json['name'] ?? '',
        category: json['category'] ?? '',
        price: (json['price'] ?? 0.0).toDouble(),
        rating: (json['rating'] ?? 0.0).toDouble(),
        imageUrl: json['imageUrl'] ?? '',
        description: json['description'] ?? '',
        reviews: (json['reviews'] as List<dynamic>?)
                ?.map((r) => Review.fromJson(r))
                .toList() ??
            [],
      );
}
