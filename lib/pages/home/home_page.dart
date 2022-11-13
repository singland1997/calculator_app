import 'package:calcutator_app/pages/home/widgets/calculator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Calculator(),
    );
  }
}
