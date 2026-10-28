# SHOPIN - Mobile E-Commerce App

SHOPIN is a complete, production-quality mobile e-commerce application built in Flutter (Dart 3, null safety) adhering to Clean Architecture principles and feature-first folder structure.

## Tech Stack
- **State Management**: Riverpod (`flutter_riverpod`)
- **Navigation**: `go_router` with named routes and redirect guards
- **Architecture**: Clean Architecture (Presentation / Domain / Data layers), feature-first organization
- **Local Storage**: `shared_preferences` for session management and cart persistence
- **Networking / Data**: Mock data source repository pattern (10+ mock products across 4 categories with ratings and reviews)
- **Design System**: Material 3 with custom theme (Deep Indigo/Navy primary, Soft Orange/Peach accents, Google Fonts Poppins)

## App Flows & Features
1. **Welcome / Splash**:
   - Logo, tagline ("Amazing shopping experience"), and "Get Started" button.
   - Intelligent navigation based on user sign-in status.
2. **Sign-In / Sign-Up**:
   - Email/password authentication, form validation, error/loading states.
   - Facebook Sign-In flow.
   - Signup success "Congratulations" screen.
3. **Password Reset**:
   - Email input, "Instructions sent" confirmation screen.
   - Simulated email inbox screen with deep-link "Reset Password" button.
   - New password form and "Password saved" success screen.
4. **Product Catalog**:
   - Product list with live search, category filter chips (`All`, `Furniture`, `Electronics`, `Fashion`, `Accessories`), and favorite toggles.
   - Product Details screen with image, price, rating, reviews link, and "Add to Cart" button.
   - Reviews screen displaying user avatars, names, star ratings, comments, and dates.
5. **Cart**:
   - Cart list with image, name, quantity stepper (`+/-`), unit price, subtotal, shipping, and total calculations.
   - Confirmation dialogs for deleting individual items or clearing the entire cart.
   - Empty cart state with illustration and shopping redirect.
6. **Checkout & Payment**:
   - Shipping address form.
   - Payment method selection (MasterCard, Visa, PayPal) and card details input.
   - Order summary review screen with "Confirm Order".
   - Order success congratulations screen with return to product catalog.

## How to Run
1. Ensure Flutter SDK (version ^3.11.1) is installed.
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app on a connected emulator or device:
   ```bash
   flutter run
   ```
