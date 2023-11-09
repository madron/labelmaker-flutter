import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/home.dart';
import 'utils.dart';


void main() {

  testWidgets('Start', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: HomePage()));
    expect(find.descendant(of: find.byType(NavigationRail), matching: find.text('Label')), findsOneWidget);
    expect(find.descendant(of: find.byType(NavigationRail), matching: find.text('Style')), findsOneWidget);
  });

  testWidgets('Click style', (tester) async {
    await tester.pumpWidget(const TestWidgetsWrapper(child: HomePage()));
    // LabelPage is active by default
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Label')), findsOneWidget);
    // Tap style page.
    await tester.tap(find.byIcon(Icons.style));
    await tester.pump();
    // StylePage is active
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Style')), findsOneWidget);
  });

}
