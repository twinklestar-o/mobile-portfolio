import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Sistem Informasi Alumni IT Del',
      'description':
          'Web untuk alumni dan pusat karir, menggunakan Laravel dan Bootstrap.',
    },
    {
      'title': 'Aplikasi Prediksi Harga Rumah',
      'description': 'Desktop app dengan Python, XGBoost, dan Tkinter.',
    },
    {
      'title': 'Sistem Kunjungan Langsung',
      'description':
          'Aplikasi mobile Flutter untuk pencatatan kunjungan user dan admin.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return Card(
          margin: EdgeInsets.only(bottom: 16),
          child: ListTile(
            title: Text(project['title']!),
            subtitle: Text(project['description']!),
            leading: Icon(Icons.check_circle_outline),
          ),
        );
      },
    );
  }
}
