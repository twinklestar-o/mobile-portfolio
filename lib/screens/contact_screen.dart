import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      throw 'Tidak bisa membuka URL $url';
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
          onTap: () => _launchURL('https://linkedin.com/in/ruthsiregar'),
        ),
        ListTile(
          leading: Icon(Icons.code),
          title: Text('GitHub'),
          onTap: () => _launchURL('https://github.com/ruthsiregar'),
        ),
      ],
    );
  }
}
