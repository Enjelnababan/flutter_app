import 'package:flutter/material.dart';
import 'package:cengkeh/screens/login/splashscreen.dart';
import 'package:cengkeh/screens/beranda/beranda.dart';
import 'package:cengkeh/screens/riwayat/riwayat_page.dart'; // Tambahkan ini

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cengkeh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/beranda': (context) => MyPage(),         // HAPUS const
        '/riwayat': (context) => RiwayatPage(),    // HAPUS const juga
      },
    );
  }
}
