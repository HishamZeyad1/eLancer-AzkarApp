import 'package:elancer_azhar/screens/azkar_screen.dart';
import 'package:elancer_azhar/screens/lanch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'screens/bio_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LaunchScreen(),
        '/azkar_screen': (context) => AzkarScreen(),
        '/bio_screen': (context) => BioScreen(),
      },
    );
  }
}
