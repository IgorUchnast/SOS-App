import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SosContainer extends StatelessWidget {
  const SosContainer({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: _buildButton(
              context,
              icon: Icons.map,
              label: 'Mapa punktów AED',
              onTap: () => _launchURL(
                  'https://openaedmap.org/pl/#map=14.49/52.21877/21.00851'),
            ),
          ),
          SizedBox(width: 10), // Spacer to maintain space between buttons
          Expanded(
            child: _buildButton(
              context,
              icon: Icons.local_pharmacy,
              label: 'Mapa aptek',
              onTap: () => _launchURL(
                  'https://example.com/pharmacies'), // Replace with actual URL
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required IconData icon,
      required String label,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 24),
            Text(label, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
