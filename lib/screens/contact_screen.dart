import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/widgets/custom_app_bar.dart';
import '../core/widgets/custom_drawer.dart';
import '../core/widgets/footer.dart';
import '../core/widgets/responsive_layout.dart';

class ContactScreen extends StatelessWidget {
  final String email = 's.bamahfoodh@gmail.com';
  final String linkedInUrl = 'https://www.linkedin.com/in/salim-bamahfoodh/';
  final String githubUrl = 'https://github.com/salim-bamahfoodh';

  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: ContactContentMobile(),
      tabletBody: ContactContentDesktop(),
      desktopBody: ContactContentDesktop(),
    );
  }
}

class ContactContentMobile extends StatelessWidget {
  const ContactContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Contact Me'),
      ),
      body: const ContactContent(),
      bottomNavigationBar: const Footer(),
    );
  }
}

class ContactContentDesktop extends StatelessWidget {
  const ContactContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: ContactContent(),
      bottomNavigationBar: Footer(),
    );
  }
}

class ContactContent extends StatelessWidget {
  final String email = 's.bamahfoodh@gmail.com';
  final String linkedInUrl = 'https://www.linkedin.com/in/salim-bamahfoodh/';
  final String githubUrl = 'https://github.com/salim-bamahfoodh';

  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        child: Column(
          children: [
            Text(
              'Let\'s get in touch!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            const Text(
              'Feel free to reach out for collaborations or just a friendly chat.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.email),
              label: const Text('Email Me'),
              onPressed: () => launch('mailto:$email'),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 20,
              children: [
                IconButton(
                  icon: const Icon(Icons.linked_camera),
                  onPressed: () => launch(linkedInUrl),
                ),
                IconButton(
                  icon: const Icon(Icons.code),
                  onPressed: () => launch(githubUrl),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}