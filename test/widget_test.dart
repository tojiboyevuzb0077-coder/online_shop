import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_shop2/main.dart';

void main() {
  testWidgets('ShopIn app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: ShopInApp(),
      ),
    );

    // Verify that welcome screen is shown with SHOPIN
    expect(find.text('SHOPIN'), findsWidgets);
  });
}
