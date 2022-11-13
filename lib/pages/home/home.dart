import 'package:calcutator_app/pages/home/widgets/build_buttons.dart';
import 'package:calcutator_app/pages/home/widgets/build_result.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Container(
          margin: const EdgeInsets.only(left: 8),
          child: Text(title),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(child: BuildResult()),
            Expanded(flex: 2, child: BuildButton())
          ],
        ),
      ),
    );
  }
}
