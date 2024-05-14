import 'package:flutter/material.dart';
import 'package:medime_mobile/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Medime',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Center(
                    child: Image.asset(
                      'images/MediMe.png',
                      height: 200.0, // Adjusted height for better fit
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
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
                          'Password',
                          style: TextStyle(
                            color: Color(0xFF9397A1),
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0), // Adjusted spacing
                    Text(
                      'Lupa Kata Sandi?',
                      style: TextStyle(
                        color: Color(0xFF525252),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 20.0), // Adjusted spacing
                    Container(
                      width: 150,
                      height: 41,
                      decoration: BoxDecoration(
                        color: Color(0xFF48BBC6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          //  logika login
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text(
                          'Log in',
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
                          'Belum punya akun?',
                          style: TextStyle(
                            color: Color(0xFF525252),
                            fontSize: 14.0,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        TextButton(
                          onPressed: () {
                            // Navigasi ke halaman register
                          },
                          child: Text(
                            'Daftar',
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
        ),
      ),
    );
  }
}
