// import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:labelmaker/src/app.dart';
import 'package:flutter/material.dart';



void main() {

  testWidgets('MainApp', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Label')), findsOneWidget);
  });

}
