import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/label.dart';
import 'utils.dart';


void main() {
  testWidgets('LabelPage', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: LabelPage()));
    expect(find.text('LabelPage'), findsOneWidget);
  });
}
