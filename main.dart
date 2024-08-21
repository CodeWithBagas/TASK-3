import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  // Menambahkan parameter key dan menambahkan const pada konstruktor
  const TeksUtama({Key? key, required this.teks1, required this.teks2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 5,
            offset: Offset(-15, 15),
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            teks1,
            textDirection: TextDirection.ltr,
          ),
          Text(
            teks2,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(
            // Menghapus keyword const pada daftar karena elemen di dalamnya bukan konstanta
            children: [
              TeksUtama(
                teks1: 'Halo',
                teks2: 'Dunia',
              ),
              TeksUtama(
                teks1: 'Apa Kabar',
                teks2: 'Budi',
              ),
              TeksUtama(
                teks1: 'Apa Kabar',
                teks2: 'Andi',
              ),
              TeksUtama(
                teks1: 'Apa Kabar',
                teks2: 'Santi',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: const Icon(Icons.refresh),
          onPressed: () {
            // Aksi yang ingin dijalankan ketika tombol ditekan
          },
        ),
      ),
    ),
  );
}
