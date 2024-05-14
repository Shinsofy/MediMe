import 'package:flutter/material.dart';
import 'package:medime_mobile/Schedule.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang', style: TextStyle(fontSize: 24)),
        backgroundColor: const Color(0xFF5486C4),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Penjualan Harian & Stock',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Action when the first card is tapped
                print('Obat Terjual card tapped');
              },
              child: CardWithText(
                title: 'Obat Terjual',
                value: '100',
                color: Color(0xFF48BBC6),
                icon: Icons.task,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Action when the second card is tapped
                print('Stock Tersedia card tapped');
              },
              child: CardWithText(
                title: 'Stock Tersedia',
                value: '500',
                color: Color(0xFF48BBC6),
                icon: Icons.menu_book,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Action when the third card is tapped
                Navigator.push(context,MaterialPageRoute(builder: (context) => EmployeeSchedule()),);
              },
              child: CardWithText(
                title: 'Schedule',
                value: 'Kelvin Brawijaya',
                color: Color(0xFF5486C4),
                icon: Icons.schedule,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class CardWithText extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;

  CardWithText({
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4), // Adjust spacing between title and value
                Text(
                  value,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}