import 'package:flutter/material.dart';

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
      home: EmployeeSchedule(),
    );
  }
}

class EmployeeSchedule extends StatelessWidget {
  const EmployeeSchedule({Key? key}) : super(key: key);

  // Fungsi untuk menampilkan bottom sheet konfirmasi penghapusan
  void _showDeleteConfirmation(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white, // Ubah warna latar belakang bottom sheet
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Apakah Anda yakin ingin menghapus data ini?',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan logika untuk konfirmasi penghapusan di sini
                      Navigator.pop(context); // Tutup bottom sheet
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF48BBC6)), // Ubah warna latar belakang
                    ),
                    child: Text(
                      'Ya',
                      style: TextStyle(
                        color: Colors.white, // Ubah warna teks menjadi putih
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Tutup bottom sheet
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF48BBC6)), // Ubah warna latar belakang
                    ),
                    child: Text(
                      'Tidak',
                      style: TextStyle(
                        color: Colors.white, // Ubah warna teks menjadi putih
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jadwal Shift',
          style: TextStyle(
            color: Colors.white, // Ubah teks menjadi putih
            fontWeight: FontWeight.w600, // Teks semi-bold
          ),
        ),
        backgroundColor: const Color(0xFF5486C4), // Ubah warna latar belakang
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
  children: [
    SizedBox(
      width: 155,
      height: 29,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white, // Warna latar belakang Search Box
        ),
        child: Row(
          children: [
            Icon(
              Icons.refresh,
              size: 16,
              color: Color(0xFF807A7A), // Warna ikon
            ),
          ],
        ),
      ),
    ),
    SizedBox(width: 10), // Jarak antara Search Box dan Button
    ElevatedButton(
      onPressed: () {
        // Fungsi untuk berpindah ke halaman TambahPembelian
        //Navigator.push(context,MaterialPageRoute(builder: (context) => TambahPembelian()),);
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color(0xFF48BBC6)), // Warna latar belakang Button
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            size: 16,
            color: Colors.white, // Warna ikon tambah
          ),
          SizedBox(width: 5),
          Text(
            'Tambah',
            style: TextStyle(
              fontSize: 11,
              color: Colors.white, // Warna teks
            ),
          ),
        ],
      ),
    ),
  ],
),
          ),
          SizedBox(height: 10), // Jarak antara Search Box dan Tabel
          SingleChildScrollView(
            child: Column(
              children: [
                Table(
                  border: TableBorder.all(
                      color: const Color(0xFFF2F2F2)), // Warna garis pembatas
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color:
                            const Color(0xFFF2F2F2), // Warna latar belakang header
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Nama',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Jam Masuk',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Jam Keluar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(''), // Kosongkan teks untuk baris pertama
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(''), // Kosongkan teks untuk baris pertama
                        ),
                      ],
                    ),
                    // Data obat yang sudah ada
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Anto'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('07.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('11.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: const Color(0xFF5486C4), // Warna ikon edit
                            ),
                            onPressed: () {
                              // Tambahkan logika untuk edit data di sini
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: const Color(                            0xFF5486C4), // Warna ikon hapus
                            ),
                            onPressed: () {
                              // Tampilkan bottom sheet untuk konfirmasi penghapusan
                              _showDeleteConfirmation(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    // Data obat lainnya
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Udin'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('11.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('15.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: const Color(0xFF5486C4), // Warna ikon edit
                            ),
                            onPressed: () {
                              // Tambahkan logika untuk edit data di sini
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: const Color(0xFF5486C4), // Warna ikon hapus
                            ),
                            onPressed: () {
                              // Tampilkan bottom sheet untuk konfirmasi penghapusan
                              _showDeleteConfirmation(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Yanti'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('15.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('19.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: const Color(0xFF5486C4), // Warna ikon edit
                            ),
                            onPressed: () {
                              // Tambahkan logika untuk edit data di sini
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: const Color(0xFF5486C4), // Warna ikon hapus
                            ),
                            onPressed: () {
                              // Tampilkan bottom sheet untuk konfirmasi penghapusan
                              _showDeleteConfirmation(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Erni'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('19.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('23.00'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: const Color(0xFF5486C4), // Warna ikon edit
                            ),
                            onPressed: () {
                              // Tambahkan logika untuk edit data di sini
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: const Color(0xFF5486C4), // Warna ikon hapus
                            ),
                            onPressed: () {
                              // Tampilkan bottom sheet untuk konfirmasi penghapusan
                              _showDeleteConfirmation(context);
                            },
                          ),
                        ),
                      ],
                    ),
                    // Tambahkan data obat lainnya di sini
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