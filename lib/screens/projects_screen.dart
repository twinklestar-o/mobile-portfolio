import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';
import 'project_detail_screen.dart';

class ProjectsScreen extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'SUFI-ONE',
      description:
          'Aplikasi pencatatan kunjungan user dan admin berbasis Flutter.',
      imageAsset: 'assets/SuFiOne.jpg',
      detail:
          'Contributed as a Mobile Developer in building two key modules of a corporate Super App to improve field operations. SMILE: Developed an offline-first dealer visit system using SQFLite, enabling users to access and refresh local datasets (branch, dealer, collection) with minimal API calls. DAMS: Built a QR-based asset documentation feature that allows users to scan, retrieve, and update asset data, with all scans saved in an editable history log. Integrated Flutter frontend with Laravel backend via REST APIs and optimized app performance. This project enhanced my expertise in offline data handling, QR integration, and scalable modular app development.',
    ),
    Project(
      title: 'CAIS',
      description: 'Career Information System berbasis Web.',
      imageAsset: 'assets/CAIS.jpg',
      detail:
          'Developed a web-based platform to connect partner companies with alumni, featuring job listings, partner directories, and alumni career tracking. Led a small team as a Scrum Master and developer, ensuring a scalable and user-friendly system using Laravel and Agile (Scrum).',
    ),
    Project(
      title: 'NGEKOST',
      description: 'Aplikasi mobile untuk pencarian dan pemesanan kos.',
      imageAsset: 'assets/ngekost.png',
      detail:
          'Ngekos is a modern and full-featured boarding house (kos-kosan) web platform built with Laravel 11, Filament, and Midtrans. It allows users to search for high-quality accommodations by city and category, view detailed room info, and choose flexible payment options (DP or full payment). Users can fill out personal data, select their check-in date, and pay securely via Midtrans. Admins manage cities, categories, rooms, facilities, bookings, and user testimonials via a powerful Filament dashboard.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: projects.length,
        itemBuilder: (context, index) {
          final project = projects[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProjectDetailScreen(project: project),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card Image & Content
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        Colors
                            .indigo
                            .shade900, // background gelap seperti desain
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                project.imageAsset,
                                height: 180,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // Title Below Card
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, bottom: 24),
                  child: Text(
                    project.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
