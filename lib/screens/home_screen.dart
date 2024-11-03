import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../core/widgets/custom_app_bar.dart';
import '../core/widgets/custom_drawer.dart';
import '../core/widgets/footer.dart';
import '../core/widgets/responsive_layout.dart';
import 'projects_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: HomeContentMobile(),
      tabletBody: HomeContentDesktop(),
      desktopBody: HomeContentDesktop(),
    );
  }
}

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Salim Bamahfoodh'),
      ),
      body: const HomeContent(),
      bottomNavigationBar: const Footer(),
    );
  }
}

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: HomeContent(),
      bottomNavigationBar: Footer(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
          child: Column(
            children: [
              Text(
                'Hi, I am',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 10),
              Text(
                'Salim Bamahfoodh',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Mobile Developer',
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    speed: const Duration(milliseconds: 100),
                  ),
                  TypewriterAnimatedText(
                    'Flutter Enthusiast',
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                repeatForever: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()),
                  );
                },
                child: const Text('View My Work'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}