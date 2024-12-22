import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/dashboard_view.dart';

void main() {
  runApp(
    // const MyApp(),
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Responsive DashBoard App',
      home: DashboardView(),
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
    );
  }
}
