import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cengkeh/screens/riwayat/riwayat_page.dart';

void main() {
  testWidgets('RiwayatPage menampilkan teks Riwayat', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: RiwayatPage(),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Riwayat'), findsOneWidget);
  });
}
