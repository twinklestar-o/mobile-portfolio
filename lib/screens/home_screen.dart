import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [theme.colorScheme.background, theme.primaryColorLight],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 185, 198, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile Picture
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/profile.png'),
                      backgroundColor: Colors.grey[300],
                    ),
                    SizedBox(width: 16),
                    // Name and role
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RUTH FIDIA SIREGAR',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'MOBILE DEVELOPER',
                            style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              letterSpacing: 1.1,
                            ),
                          ),
                          Divider(thickness: 2, color: theme.primaryColorDark),
                          Text(
                            'I am an aspiring Android Developer with a strong passion for building intuitive and impactful mobile applications.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // About Me Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 185, 198, 255),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABOUT ME',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(thickness: 2, color: theme.primaryColorDark),
                    Text(
                      'My interest in mobile development stems from a desire to solve real-world problems through clean, efficient, and scalable code. I have experience working with modern Android technologies such as Kotlin, Flutter, and MVVM architecture, and I’m always eager to explore new tools and best practices in the Android ecosystem.\n\n'
                      'Through continuous learning and hands-on projects, I strive to write maintainable code and design engaging UI/UX experiences that provide value to users. I am motivated by challenges and excited to grow as a developer by contributing to impactful projects and collaborating with others in the tech community.',
                      style: TextStyle(fontSize: 14, height: 1.5),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),

              // Technical Skill Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 185, 198, 255),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'TECHNICAL SKILL',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(thickness: 2, color: theme.primaryColorDark),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('>> Flutter'),
                              Text('>> Kotlin'),
                              Text('>> SQL Server / SSMS'),
                              Text('>> REST API Integration'),
                              Text('>> Git & GitHub'),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('>> HTML/CSS'),
                              Text('>> JavaScript'),
                              Text('>> JSON Parsing'),
                              Text('>> Android Studio'),
                              Text('>> Git & GitHub'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue.shade50,
      labelStyle: TextStyle(color: Colors.blue.shade800),
      side: BorderSide(color: Colors.blue.shade200),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
