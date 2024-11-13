import 'package:flutter/material.dart';
import 'funfact.dart';

class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('About Me'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Foto Diri
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/foto diri.jpg'),
                ),
                SizedBox(width: 16),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rahmat Ramadhan Permana',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'NRP: 5026221154',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Perkenalkan nama saya Rahmat Ramadhan Permana, biasa disapa Dani. Saya adalah seorang mahasiswa semester 5 jurusan Sistem Informasi yang memiliki minat dalam pengembangan web dan aplikasi serta analisis data. Saat ini saya sedang belajar mengenai pengembangan aplikasi mobile menggunakan Flutter.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )),
            const SizedBox(height: 20),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Funfact()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                      color: Color.fromARGB(
                          255, 0, 213, 255)), // Warna border putih
                  foregroundColor: const Color.fromARGB(
                      255, 0, 213, 255), // Warna teks putih
                ),
                child: const Text('Funfact!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
