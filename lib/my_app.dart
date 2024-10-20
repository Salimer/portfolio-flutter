import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_template/core/config/app_theme.dart';
import 'package:flutter_template/test.dart';

import 'core/utils/observers/navigator_observer.dart';
import 'features/home/presentation/views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: const Locale('ar'),
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      navigatorObservers: [
        LoggerNavigatorObserver(),
      ],
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeView(),
      },
    );
  }
}
