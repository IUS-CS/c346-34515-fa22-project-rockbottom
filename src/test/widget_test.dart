// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:retro_arcade/components/counter.dart';
import 'package:retro_arcade/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  test('Counter value should be incremented', () {
    final counter = Counter();

    counter.increment();

    expect(counter.value, 1);
  });

  testWidgets('MyHomePage has a title', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final titleFinder = find.text('Retro Arcade Home Page');

    expect(titleFinder, findsOneWidget);
  });

  test('Counter value increments then decrements', ()  {
    final counter = Counter();

    counter.increment();
    counter.decrement();

    expect(counter.value, 0);
  });

  test('Counter value increments then resets', ()  {
    final counter = Counter();

    counter.increment();
    for (int i = 0; i < 50; i++) {
      counter.increment();
    }
    expect(counter.value, 51);
    counter.value = 0;
    expect(counter.value, 0);
  });

}
