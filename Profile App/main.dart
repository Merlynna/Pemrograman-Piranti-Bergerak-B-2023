// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      backgroundColor: Colors.red.shade900, // latar belakang merah tua
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 25),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.redAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 30, color: Colors.red),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Marlina Yunus",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    "Mahasiswa Informatika\nFakultas Teknik",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // Penyimpanan Profil Data Pribadi
            _buildInfoCard(Icons.person, "Nama", "Marlina Yunus"),
            _buildInfoCard(
              Icons.location_on,
              "Tempat/Tanggal Lahir",
              "Kota Kinabalu, 10 Maret 2001",
            ),
            _buildInfoCard(Icons.account_balance, "Agama", "Kristen"),
            _buildInfoCard(Icons.school, "Almamater", "Universitas Mulawarman"),
            _buildInfoCard(
              Icons.computer,
              "Jurusan/Fakultas",
              "Informatika/Fakultas Teknik",
            ),
            _buildInfoCard(Icons.work, "Bidang", "Design UI/UX / Programmer"),
          ],
        ),
      ),
    );
  }

  // Komponen Kartu Data
  static Widget _buildInfoCard(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListTile(
          dense: true,
          leading: CircleAvatar(
            radius: 14, // 🔹 dikecilkan dari default (24)
            backgroundColor: Colors.red.shade700,
            child: Icon(
              icon,
              color: Colors.white,
              size: 14,
            ), // ikon menyesuaikan
          ),
          title: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            value,
            style: const TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
