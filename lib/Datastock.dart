import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Obat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: stock(),
    );
  }
}

class stock extends StatelessWidget {
  const stock({Key? key}) : super(key: key);

  void _showDeleteConfirmation(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
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
                      // Add deletion logic here
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(0xFF48BBC6)), // Ubah warna latar belakang
                    ),
                    child: Text(
                      'Ya',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(0xFF48BBC6)), // Ubah warna latar belakang
                    ),
                    child: Text(
                      'Tidak',
                      style: TextStyle(
                        color: Colors.white,
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
          'Data Penyimpanan',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: const Color(0xFF5486C4),
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
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(
                            Icons.search,
                            size: 16,
                            color: Color(0xFF807A7A),
                          ),
                        ),
                        Text(
                          'Cari',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF807A7A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to Add Purchase page
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color(0xFF48BBC6)), // Warna latar belakang Button
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Tambah',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder.all(color: const Color(0xFFF2F2F2)),
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Nama Obat',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Jumlah',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Tgl Kadaluarsa',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Supplier',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  _buildTableRow(
                      context, 'Paracetamol', '100', '22/04/25', 'Kimia Farma'),
                  _buildTableRow(
                      context, 'Amoxicillin', '50', '18/01/25', 'Indo Farma'),
                  _buildTableRow(
                      context, 'Aspirin', '80', '30/07/25', 'Dexa Medica'),
                  _buildTableRow(
                      context, 'Ibuprofen', '120', '13/07/25', 'Indo Farma'),
                  _buildTableRow(
                      context, 'Omeprazole', '60', '04/11/25', 'Kimia Farma'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRow(BuildContext context, String name, String quantity,
      String expiryDate, String supplier) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(name),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(quantity),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(expiryDate), // Menampilkan tanggal kadaluarsa
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(supplier), // Menampilkan supplier
        ),
      ],
    );
  }
}
