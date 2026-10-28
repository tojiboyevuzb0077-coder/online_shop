import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/welcome_screen.dart';
import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/auth/presentation/screens/facebook_signin_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/auth/presentation/screens/signup_success_screen.dart';
import '../../features/auth/presentation/screens/forgot_password_screen.dart';
import '../../features/auth/presentation/screens/instructions_sent_screen.dart';
import '../../features/auth/presentation/screens/simulated_email_screen.dart';
import '../../features/auth/presentation/screens/new_password_screen.dart';
import '../../features/auth/presentation/screens/password_saved_screen.dart';
import '../../features/product/presentation/screens/product_list_screen.dart';
import '../../features/product/presentation/screens/product_detail_screen.dart';
import '../../features/product/presentation/screens/favorites_screen.dart';
import '../../features/product/presentation/screens/reviews_screen.dart';
import '../../features/product/domain/models/review_model.dart';
import '../../features/cart/presentation/screens/cart_screen.dart';
import '../../features/checkout/presentation/screens/shipping_address_screen.dart';
import '../../features/checkout/presentation/screens/payment_method_screen.dart';
import '../../features/checkout/presentation/screens/checkout_summary_screen.dart';
import '../../features/checkout/presentation/screens/order_success_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: '/facebook-signin',
        builder: (context, state) => const FacebookSigninScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: '/signup-success',
        builder: (context, state) => const SignupSuccessScreen(),
      ),
      GoRoute(
        path: '/forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/instructions-sent',
        builder: (context, state) => const InstructionsSentScreen(),
      ),
      GoRoute(
        path: '/simulated-email',
        builder: (context, state) => const SimulatedEmailScreen(),
      ),
      GoRoute(
        path: '/new-password',
        builder: (context, state) => const NewPasswordScreen(),
      ),
      GoRoute(
        path: '/password-saved',
        builder: (context, state) => const PasswordSavedScreen(),
      ),
      GoRoute(
        path: '/products',
        builder: (context, state) => const ProductListScreen(),
      ),
      GoRoute(
        path: '/product-detail/:id',
        builder: (context, state) {
          final id = state.pathParameters['id'] ?? '1';
          return ProductDetailScreen(productId: id);
        },
      ),
      GoRoute(
        path: '/favorites',
        builder: (context, state) => const FavoritesScreen(),
      ),
      GoRoute(
        path: '/reviews',
        builder: (context, state) {
          final reviews = (state.extra as List<Review>?) ?? [];
          return ReviewsScreen(reviews: reviews);
        },
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) => const CartScreen(),
      ),
      GoRoute(
        path: '/checkout/shipping',
        builder: (context, state) => const ShippingAddressScreen(),
      ),
      GoRoute(
        path: '/checkout/payment',
        builder: (context, state) => const PaymentMethodScreen(),
      ),
      GoRoute(
        path: '/checkout/summary',
        builder: (context, state) => const CheckoutSummaryScreen(),
      ),
      GoRoute(
        path: '/checkout/success',
        builder: (context, state) => const OrderSuccessScreen(),
      ),
    ],
  );
});
