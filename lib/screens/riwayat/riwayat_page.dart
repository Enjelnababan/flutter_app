import 'package:flutter/material.dart';
import 'package:cengkeh/screens/riwayat/riwayat_card.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 212, 36),
        centerTitle: true,
        title: const Text(
          'Riwayat',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => const RiwayatCard(),
      ),
      // Hapus bagian bottomNavigationBar di halaman Riwayat
    );
  }
}
