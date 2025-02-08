import 'package:flutter_test/flutter_test.dart';
import 'package:bookstore_app/main.dart';

void main() {
  testWidgets('Book Pulse app loads correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const BookPulseApp());
    expect(find.text('Book Pulse'), findsOneWidget);
    expect(find.text('Rich Dad, Poor Dad'), findsOneWidget);
  });
}
