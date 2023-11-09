import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/app.dart';

void main() {
  testWidgets('MainApp', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
    expect(find.text('LabelPage'), findsOneWidget);
  });
}
