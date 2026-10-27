
import 'package:flutter/material.dart';

void main() {
  // [1] awal aplikasi Flutter
  runApp(const MyWidget());
}

// [2] CLASS UTAMA APLIKASI (mywidget)
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Latihan',
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,

      // Memanggil halaman utama (Myhome)
      home: const Myhome(),
    );
  }
}

// [3] CLASS HALAMAN UTAMA (myhome)
class Myhome extends StatelessWidget {
  const Myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =================================================
      // [4] POSISI KESELURUHAN WIDGET DI TENGAH LAYAR
      // Center mengatur posisi child di tengah area
      // yang tersedia pada Scaffold.
      // =================================================
      body: Center(
        child: Padding(
          // [5] JARAK DARI TEPI LAYAR
          padding: const EdgeInsets.all(20),

          // =================================================
          // [6] RICHTEXT
          // Menggabungkan beberapa bagian teks dengan
          // gaya berbeda dalam satu paragraf.
          // =================================================
          child: RichText(

            // [7] TEKS AGAR MENJADI RATA TENGAH
            textAlign: TextAlign.center,

            // [8] SOFT WRAP
            // teks turun baris otomatis
            // jika lebar area tidak mencukupi.
            softWrap: true,

            // [9] MAX LINES
            // Membatasi jumlah baris yang ditampilkan.
            maxLines: 10,

            // [10] OVERFLOW
            // Menampilkan ... jika teks terpotong
            // karena batas baris atau area tampilan.
            overflow: TextOverflow.ellipsis,

            // [11] TEXT SCALER
            // Skala teks 1.0 kali untuk contoh ini.
            textScaler: const TextScaler.linear(1.0),

            // =================================================
            // [12] TEXTSPAN UTAMA
            // Menampung seluruh bagian teks.
            // =================================================
            text: TextSpan(

              // [13] STYLE DEFAULT
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
                height: 1.6,
              ),

              // =================================================
              // [14] CHILDREN TEXTSPAN
              // Setiap TextSpan  memiliki gaya sendiri.
              // Simbol \n membuat baris baru.
              // =================================================
              children: [
                // Kalimat 1 dengan garis bawah
                TextSpan(
                  text: 'Hallo World!\n',
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),

                // Kalimat 2 hurufnya tebel dan berwarna biru
                TextSpan(
                  text: 'Saya Rizki Riana Putra\n',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                // Kalimat 3 hurufnya miring dan berwarna hitam
                TextSpan(
                  text: ' sedang belajar\n',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                // Kalimat 4 hurufnya tebal dan berwarna ungu
                TextSpan(
                  text: 'Text styling Flutter\n',
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Kalimat 5 dengan jarak antar huruf lebih renggang dan berwarna hijau
                TextSpan(
                  text: 'Teks yang mudah dibaca\n',
                  style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 22,
                    letterSpacing: 1,
                  ),
                ),

                // Kalimat 6 hurufnya tebal, miring, dan berwarna oranye
                TextSpan(
                  text: 'Mumet Sithik Gak Ngaruh!',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 49,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
