import 'package:flutter/material.dart';
import 'package:flutter_template/core/extensions/context_extension.dart';

import '../widgets/responsive_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: ResponsiveAppBar(),
        ),
      body: Center(
        child: Text(context.locale.helloWorld),
      ),
    );
  }
}
