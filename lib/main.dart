import 'package:calcutator_app/pages/home/home.dart';
import 'package:calcutator_app/pages/home/providers/calculate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Calculator';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.dark(useMaterial3: true),
        home: ChangeNotifierProvider(
            create: (context) => Calculate(),
            child: const HomePage(title: title)),
      );
}
