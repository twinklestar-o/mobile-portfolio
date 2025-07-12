import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [theme.colorScheme.background, theme.primaryColorLight],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Nama dan Role di atas gambar
              Text(
                'Ruth Siregar',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: theme.primaryColorDark,
                ),
              ),
              Text(
                'Mahasiswa Informatika - IT Del',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),

              // Foto Profil
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  'assets/profile.png',
                ), // Ganti dengan foto kamu
                backgroundColor: Colors.grey[300],
              ),
              SizedBox(height: 24),

              // Deskripsi
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Saya adalah mahasiswa yang aktif mengembangkan aplikasi mobile dan web. Memiliki pengalaman dalam proyek kolaboratif menggunakan metode Agile. Saya antusias belajar teknologi baru dan membangun solusi digital yang berdampak.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
