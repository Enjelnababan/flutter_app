import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:cengkeh/main.dart' as app; // Ganti `cengkeh` sesuai nama folder lib kamu

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Menampilkan ikon camera_alt setelah splash screen', (WidgetTester tester) async {
    // Jalankan aplikasi utama
    app.main();
    await tester.pump(); // Frame awal

    // Tunggu hingga splash screen selesai (5 detik)
    await tester.pump(const Duration(seconds: 6));

    // Tunggu hingga semua animasi/navigasi selesai
    await tester.pumpAndSettle();

    // Periksa apakah ikon camera_alt tampil di halaman beranda
    expect(find.byIcon(Icons.camera_alt), findsOneWidget);
  });
}
