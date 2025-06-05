import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      // Jika ikon Riwayat ditekan, navigasi ke halaman riwayat
      Navigator.pushNamed(context, '/riwayat');
    } else {
      // Tetap di halaman saat ini dan update indeks
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/logo.png',
            width: 40,
            height: 40,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi ikon notifikasi
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  Icon(Icons.camera_alt, size: 100, color: Colors.blue),
                  SizedBox(height: 10),
                  Text(
                    'Life Cam',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Kematangan Cengkeh', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    child: BarChart(
                      BarChartData(
                        barGroups: [
                          BarChartGroupData(x: 0, barRods: [
                            BarChartRodData(toY: 8, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(toY: 5, color: Colors.orange),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(toY: 7, color: Colors.red),
                          ]),
                        ],
                        titlesData: FlTitlesData(
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, _) {
                                switch (value.toInt()) {
                                  case 0:
                                    return Text('Muda');
                                  case 1:
                                    return Text('Matang');
                                  case 2:
                                    return Text('Tua');
                                  default:
                                    return Text('');
                                }
                              },
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        borderData: FlBorderData(show: false),
                        gridData: FlGridData(show: false),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: screenWidth,
                    height: 400,
                    child: Image.asset(
                      'assets/images/cengkeh.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.green, // Set background color to black
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white, // Make unselected items white for contrast
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
