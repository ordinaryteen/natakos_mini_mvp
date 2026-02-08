import 'package:flutter/material.dart';
import 'package:natakos_mini_mvp/pages/home.dart';

void main() {
  runApp(const NatakosApp());
}

class NatakosApp extends StatelessWidget {
  const NatakosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
