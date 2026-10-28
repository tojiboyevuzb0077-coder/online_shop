import '../../domain/models/product_model.dart';
import '../../domain/models/review_model.dart';
import '../../domain/repositories/product_repository.dart';

class ProductMockDatasource implements ProductRepository {
  final List<Product> _mockProducts = [
    Product(
      id: '1',
      name: 'Orange Chair',
      category: 'Furniture',
      price: 129.99,
      rating: 4.8,
      imageUrl: 'https://images.unsplash.com/photo-1567538096630-e0c55bd6374c?auto=format&fit=crop&w=600&q=80',
      description: 'Ergonomic and stylish modern orange chair crafted with premium fabric and sturdy wooden legs. Perfect for living room or office space.',
      reviews: [
        Review(id: 'r1', userName: 'Alice Smith', userAvatarUrl: 'https://i.pravatar.cc/150?img=1', rating: 5.0, comment: 'Absolutely love this chair! Super comfy and vibrant.', date: 'Oct 12, 2026'),
        Review(id: 'r2', userName: 'Bob Jones', userAvatarUrl: 'https://i.pravatar.cc/150?img=2', rating: 4.5, comment: 'Great quality, matches my living room decor perfectly.', date: 'Oct 15, 2026'),
      ],
    ),
    Product(
      id: '2',
      name: 'Minimalist Wooden Table',
      category: 'Furniture',
      price: 249.99,
      rating: 4.6,
      imageUrl: 'https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?auto=format&fit=crop&w=600&q=80',
      description: 'Handcrafted solid oak wooden dining table with a sleek minimalist design and natural finish.',
      reviews: [
        Review(id: 'r3', userName: 'Charlie Brown', userAvatarUrl: 'https://i.pravatar.cc/150?img=3', rating: 4.0, comment: 'Sturdy and beautiful wood grain.', date: 'Oct 10, 2026'),
      ],
    ),
    Product(
      id: '3',
      name: 'Wireless Noise-Canceling Headphones',
      category: 'Electronics',
      price: 199.99,
      rating: 4.9,
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=600&q=80',
      description: 'Immersive sound quality with active noise cancellation and 30-hour battery life.',
      reviews: [
        Review(id: 'r4', userName: 'David Miller', userAvatarUrl: 'https://i.pravatar.cc/150?img=4', rating: 5.0, comment: 'Best headphones I have ever owned. Sound is crystal clear.', date: 'Oct 20, 2026'),
      ],
    ),
    Product(
      id: '4',
      name: 'Smart Fitness Watch',
      category: 'Electronics',
      price: 149.99,
      rating: 4.3,
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80',
      description: 'Track your daily fitness goals, heart rate, sleep patterns, and smartphone notifications with ease.',
      reviews: [
        Review(id: 'r5', userName: 'Emma Watson', userAvatarUrl: 'https://i.pravatar.cc/150?img=5', rating: 4.0, comment: 'Battery lasts long and step counter is accurate.', date: 'Oct 18, 2026'),
      ],
    ),
    Product(
      id: '5',
      name: 'Classic Leather Jacket',
      category: 'Fashion',
      price: 189.99,
      rating: 4.7,
      imageUrl: 'https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=600&q=80',
      description: 'Genuine cowhide leather jacket with quilted lining and durable metal zippers.',
      reviews: [
        Review(id: 'r6', userName: 'Frank Castle', userAvatarUrl: 'https://i.pravatar.cc/150?img=6', rating: 5.0, comment: 'Top-notch leather smell and perfect fit.', date: 'Oct 05, 2026'),
      ],
    ),
    Product(
      id: '6',
      name: 'Casual Denim Shirt',
      category: 'Fashion',
      price: 59.99,
      rating: 4.2,
      imageUrl: 'https://images.unsplash.com/photo-1576995853123-5a10305d93c0?auto=format&fit=crop&w=600&q=80',
      description: 'Soft cotton denim shirt suitable for both casual outings and smart-casual work environments.',
      reviews: [
        Review(id: 'r7', userName: 'Grace Hopper', userAvatarUrl: 'https://i.pravatar.cc/150?img=7', rating: 4.0, comment: 'Very comfortable fabric.', date: 'Oct 14, 2026'),
      ],
    ),
    Product(
      id: '7',
      name: 'Designer Sunglasses',
      category: 'Accessories',
      price: 89.99,
      rating: 4.5,
      imageUrl: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80',
      description: 'UV400 protected polarized sunglasses with titanium frames.',
      reviews: [
        Review(id: 'r8', userName: 'Hannah Abbott', userAvatarUrl: 'https://i.pravatar.cc/150?img=8', rating: 5.0, comment: 'Very stylish and lightweight.', date: 'Oct 11, 2026'),
      ],
    ),
    Product(
      id: '8',
      name: 'Minimalist Backpack',
      category: 'Accessories',
      price: 79.99,
      rating: 4.6,
      imageUrl: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80',
      description: 'Water-resistant daily backpack with dedicated 15-inch laptop compartment and USB charging port.',
      reviews: [
        Review(id: 'r9', userName: 'Ian Malcolm', userAvatarUrl: 'https://i.pravatar.cc/150?img=9', rating: 4.5, comment: 'Lots of pockets and very durable.', date: 'Oct 09, 2026'),
      ],
    ),
    Product(
      id: '9',
      name: 'Ceramic Coffee Mug',
      category: 'Furniture',
      price: 24.99,
      rating: 4.8,
      imageUrl: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?auto=format&fit=crop&w=600&q=80',
      description: 'Hand-glazed ceramic coffee mug with comfortable grip handle. Microwave and dishwasher safe.',
      reviews: [
        Review(id: 'r10', userName: 'Julia Roberts', userAvatarUrl: 'https://i.pravatar.cc/150?img=10', rating: 5.0, comment: 'Keeps my coffee warm and looks gorgeous.', date: 'Oct 19, 2026'),
      ],
    ),
    Product(
      id: '10',
      name: 'Portable Bluetooth Speaker',
      category: 'Electronics',
      price: 69.99,
      rating: 4.4,
      imageUrl: 'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?auto=format&fit=crop&w=600&q=80',
      description: 'IPX7 waterproof rugged portable speaker with booming bass and 12-hour playtime.',
      reviews: [
        Review(id: 'r11', userName: 'Kevin Bacon', userAvatarUrl: 'https://i.pravatar.cc/150?img=11', rating: 4.0, comment: 'Great sound for outdoor pool parties.', date: 'Oct 08, 2026'),
      ],
    ),
  ];

  @override
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockProducts;
  }

  @override
  Future<Product?> getProductById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _mockProducts.firstWhere((p) => p.id == id);
    } catch (_) {
      return null;
    }
  }
}
