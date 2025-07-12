import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  // Fungsi untuk membuka URL dengan context
  void _launchURL(BuildContext context, String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.inAppWebView);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not launch $url')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: Icon(Icons.email),
          title: Text('ruth.siregar@email.com'),
        ),
        ListTile(leading: Icon(Icons.phone), title: Text('+62 812-3456-7890')),
        ListTile(
          leading: Icon(Icons.link),
          title: Text('LinkedIn'),
          onTap:
              () => _launchURL(context, 'https://linkedin.com/in/ruthsiregar'),
        ),
        ListTile(
          leading: Icon(Icons.code),
          title: Text('GitHub'),
          onTap: () => _launchURL(context, 'https://github.com/ruthsiregar'),
        ),
      ],
    );
  }
}
