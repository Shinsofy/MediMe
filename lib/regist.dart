import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registrasi Medime',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300.0,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0), // Ubah nilai padding ke bawah menjadi lebih kecil
              child: Center(
                child: Image.network(
                  'assets/medime.png', // Ubah path gambar sesuai dengan kebutuhan
                  height:
                      500.0, // Mengurangi tinggi gambar agar tidak terlalu jauh
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.0), // Ubah padding horizontal pada kolom
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                Container(
                  width: 200,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Username',
                      style: TextStyle(
                        color: Color(0xFF9397A1),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 200,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF9397A1),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 200,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFF9397A1),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 200,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      'Re-password',
                      style: TextStyle(
                        color: Color(0xFF9397A1),
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  width: 150,
                  height: 41,
                  decoration: BoxDecoration(
                    color: Color(0xFF48BBC6),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Implementasi logika pendaftaran
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sudah punya akun?',
                      style: TextStyle(
                        color: Color(0xFF525252),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    TextButton(
                      onPressed: () {
                        // Navigasi ke halaman login
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xFF48BBC6),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
