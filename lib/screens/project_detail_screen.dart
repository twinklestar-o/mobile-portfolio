import 'package:flutter/material.dart';
import 'package:portfolio/model/project_model.dart';

class ProjectDetailScreen extends StatelessWidget {
  final Project project;

  const ProjectDetailScreen({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('DETAIL PROJECT'), leading: BackButton()),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.colorScheme.background, theme.primaryColorLight],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                project.imageAsset,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 24),
            Text(
              project.title,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(project.detail, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
