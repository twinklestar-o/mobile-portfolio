import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatefulWidget {
  @override
  State<MyPortfolioApp> createState() => _MyPortfolioAppState();
}

class _MyPortfolioAppState extends State<MyPortfolioApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan debug banner
      title: 'Portofolio',
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: PortfolioMainPage(
        isDarkMode: isDarkMode,
        toggleTheme: () => setState(() => isDarkMode = !isDarkMode),
      ),
    );
  }
}

class PortfolioMainPage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback toggleTheme;

  PortfolioMainPage({required this.isDarkMode, required this.toggleTheme});

  @override
  State<PortfolioMainPage> createState() => _PortfolioMainPageState();
}

class _PortfolioMainPageState extends State<PortfolioMainPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ProjectsScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.grey,
        onTap: (index) => setState(() => _currentIndex = index),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(Icons.person, 0),
          _buildNavItem(Icons.work, 1),
          _buildNavItem(Icons.contact_mail, 2),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, int index) {
    bool isSelected = _currentIndex == index;
    return BottomNavigationBarItem(
      icon: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(top: isSelected ? 10 : 0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isSelected ? Colors.indigo : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: isSelected ? Colors.white : Colors.grey),
      ),
      label: '',
    );
  }
}
