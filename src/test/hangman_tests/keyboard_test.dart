import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:retro_arcade/screens/hangman_debug.dart';

void main() {
  testWidgets("Finds All The Letters On The Keyboard", (WidgetTester tester) async {
    await tester.pumpWidget(new HangmanDebug());

    expect(find.text('A'), findsOneWidget);
    expect(find.text('B'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    expect(find.text('D'), findsOneWidget);
    expect(find.text('E'), findsOneWidget);
    expect(find.text('F'), findsOneWidget);
    expect(find.text('G'), findsOneWidget);
    expect(find.text('H'), findsOneWidget);
    expect(find.text('I'), findsOneWidget);
    expect(find.text('J'), findsOneWidget);
    expect(find.text('K'), findsOneWidget);
    expect(find.text('L'), findsOneWidget);
    expect(find.text('M'), findsOneWidget);
    expect(find.text('N'), findsOneWidget);
    expect(find.text('O'), findsOneWidget);
    expect(find.text('P'), findsOneWidget);
    expect(find.text('Q'), findsOneWidget);
    expect(find.text('R'), findsOneWidget);
    expect(find.text('S'), findsOneWidget);
    expect(find.text('T'), findsOneWidget);
    expect(find.text('U'), findsOneWidget);
    expect(find.text('V'), findsOneWidget);
    expect(find.text('W'), findsOneWidget);
    expect(find.text('X'), findsOneWidget);
    expect(find.text('Y'), findsOneWidget);
    expect(find.text('Z'), findsOneWidget);
  });
}