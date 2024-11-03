import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final String linkedInUrl = 'https://www.linkedin.com/in/salim-bamahfoodh/';
  final String githubUrl = 'https://github.com/salim-bamahfoodh';

  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.blueGrey[900],
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Wrap(
            spacing: 20,
            children: [
              IconButton(
                icon: const Icon(Icons.linked_camera, color: Colors.white),
                onPressed: () => launch(linkedInUrl),
              ),
              IconButton(
                icon: const Icon(Icons.code, color: Colors.white),
                onPressed: () => launch(githubUrl),
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            '© 2024 Salim Bamahfoodh',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}