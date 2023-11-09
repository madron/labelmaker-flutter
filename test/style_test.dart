import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/style.dart';
import 'utils.dart';


void main() {

  testWidgets('StylePage', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: StylePage()));
    expect(find.text('Style'), findsOneWidget);
  });

}
