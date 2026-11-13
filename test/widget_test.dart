import 'package:flutter_test/flutter_test.dart';
import 'package:material_ui/material_ui.dart';

import 'package:my_first_app/main.dart';

void main() {
  testWidgets('shows both greetings and uses a custom theme seed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).title,
      'My First Flutter App',
    );
    expect(find.text('My First Flutter App'), findsOneWidget);
    expect(find.text('Hello, Simon Akuma Asongwe!'), findsOneWidget);
    expect(
      find.text('Welcome to Introduction to Mobile Applications!'),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(Column),
        matching: find.text('Hello, Simon Akuma Asongwe!'),
      ),
      findsOneWidget,
    );
    expect(
      find.descendant(
        of: find.byType(Column),
        matching: find.text('Welcome to Introduction to Mobile Applications!'),
      ),
      findsOneWidget,
    );
    expect(find.byType(FloatingActionButton), findsNothing);
    expect(
      tester
          .widget<MaterialApp>(find.byType(MaterialApp))
          .theme!
          .colorScheme
          .primary,
      ColorScheme.fromSeed(seedColor: Colors.teal).primary,
    );
  });
}
