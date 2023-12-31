import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/label.dart';
import 'utils.dart';


void main() {

  testWidgets('AppBar', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: LabelPage()));
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Label')), findsOneWidget);
  });

  testWidgets('Add button', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: LabelPage()));
    final widget = find.byType(FloatingActionButton);
    expect(widget, findsOneWidget);
    // click button
    await tester.tap(widget);
    await tester.pump();

  });

}
