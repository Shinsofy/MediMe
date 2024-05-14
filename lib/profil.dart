import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(47.0),
        child: AppBar(
          backgroundColor: Color(0xFF5486C4),
          title: Text(
            'Profil',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center elements
            children: [
              SizedBox(height: 23), // Jarak dari navbar
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                      'assets/profile_pictur.png'), // Ganti dengan path gambar profil Anda
                ),
              ),
              SizedBox(height: 70),
              Text(
                'Username',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                width: 265,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                width: 265,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nomor',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                width: 265,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Password',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(height: 10),
              Container(
                width: 265,
                height: 28,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF48BBC6)),
                    ),
                    child: Text(
                      'Kembali',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 80), // Add some space between the buttons
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF48BBC6)),
                    ),
                    child: Text(
                      'Edit Profil',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xFF48BBC6)),
                  ),
                  child: Text(
                    'Keluar',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
