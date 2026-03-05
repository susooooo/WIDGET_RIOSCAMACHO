import 'package:flutter/material.dart';
import 'package:widget_rioscamacho/config/router/app_router.dart';
import 'package:widget_rioscamacho/config/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).themeData(),
      routerConfig: appRouter,
    );
  }

}
  