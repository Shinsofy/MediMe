import 'package:flutter/material.dart';
import 'package:medime_mobile/login.dart';

class LoadingScr extends StatelessWidget {
  const LoadingScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Ganti warna latar belakang jika perlu
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
          child: Image.asset('images/MediMe.png'), // Ganti path gambar dengan yang sesuai
        ),
      ),
    );
  }
}


