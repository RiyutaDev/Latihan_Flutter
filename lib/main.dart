import 'package:flutter/material.dart';

void main() {
  runApp(const RizkyApp());
}

// Tugas
// NIM 1124160241
// RIZKI RIANA PUTRA
// Kelas: TI24SESHIFT

class RizkyApp extends StatelessWidget {
  const RizkyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RizkyApp',
      debugShowCheckedModeBanner: false,

      // Tema terang
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),

      // Tema gelap
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      home: const RizkyWidget(),
    );
  }
}

// Dashboard Mahasiswa
class RizkyWidget extends StatelessWidget {
  const RizkyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Dashboard ',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: 'Mahasiswa',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Beranda',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Jadwal',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Nilai',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: const Text(
              'Profil',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: const Center(
        child: Text('Rizki Riana Putra'),
      ),
    );
  }
}

// Halaman Profil
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Halaman Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Rizki Riana Putra',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'NIM: 1124160241',
              style: TextStyle(color: Colors.grey),
            ),
            const Text(
              'Kelas: TI24SESHIFT',
              style: TextStyle(color: Colors.grey),
            ),
            const Divider(height: 32),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('rizki@mail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Program Studi'),
              subtitle: Text('Teknik Informatika'),
            ),
          ],
        ),
      ),
    );
  }
}
