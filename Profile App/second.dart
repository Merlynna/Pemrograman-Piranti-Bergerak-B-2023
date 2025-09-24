import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.red.shade900],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 28, color: Colors.red),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Marlina Yunus",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Mahasiswa Informatika",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                  Text(
                    "Fakultas Teknik",
                    style: TextStyle(fontSize: 11, color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 6),

            // Profil Data
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: const [
                  _DataBox(title: "Nama", value: "Marlina Yunus"),
                  _DataBox(
                    title: "Tempat/Tanggal Lahir",
                    value: "Kota Kinabalu, 10 Maret 2001",
                  ),
                  _DataBox(title: "Agama", value: "Kristen"),
                  _DataBox(title: "Almamater", value: "Universitas Mulawarman"),
                  _DataBox(
                    title: "Jurusan/Fakultas",
                    value: "Informatika / Teknik",
                  ),
                  _DataBox(title: "Bidang", value: "Design UI/UX / Programmer"),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bar Navigasi Bawah
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.red.shade800,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            _BottomNavItem(icon: Icons.home, label: "Beranda"),
            _BottomNavItem(icon: Icons.book, label: "Materi"),
            _BottomNavItem(icon: Icons.settings, label: "Pengaturan"),
          ],
        ),
      ),
    );
  }
}

// Widget Kotak Data
class _DataBox extends StatelessWidget {
  final String title;
  final String value;

  const _DataBox({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48, // lebih kecil supaya muat layar
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.red.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.calendar_month, color: Colors.white, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(fontSize: 10, color: Colors.black87),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ================= WIDGET BOTTOM NAV =================
class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _BottomNavItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(fontSize: 10, color: Colors.white)),
      ],
    );
  }
}
