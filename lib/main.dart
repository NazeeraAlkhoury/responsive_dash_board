import 'package:flutter/material.dart';
import 'package:responsive_dash_board/view/responsive_dash_board_view.dart';

void main() {
  runApp(const ResponsiveDashBoardApp());
}

class ResponsiveDashBoardApp extends StatelessWidget {
  const ResponsiveDashBoardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Dash Board App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveDashBoardView(),
    );
  }
}

