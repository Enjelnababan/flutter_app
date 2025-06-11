import 'package:flutter/material.dart';

class RiwayatCard extends StatelessWidget {
  const RiwayatCard({super.key});

  @override
   Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey.shade300)],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/cengkeh.png',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Status Kematangan : 85%\nSiap Panen',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14),
                    SizedBox(width: 4),
                    Text('29 Feb 2025   11:49'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14),
                    SizedBox(width: 4),
                    Text('Kebun Cengkeh A'),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  'Note: Warna cengkeh sudah merata,\ndisarankan panen dalam 1-2 hari.',
                  style: TextStyle(color: Colors.red, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
