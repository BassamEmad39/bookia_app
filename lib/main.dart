import 'package:bookie_app/core/routers/routers.dart';
import 'package:bookie_app/core/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: Routes.routers,
    );
  }
}
