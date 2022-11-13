import 'package:calcutator_app/pages/home/providers/calculate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BuildResult extends StatelessWidget {
  const BuildResult({super.key});

  @override
  Widget build(BuildContext context) {
    final result = Provider.of<Calculate>(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Text(
            result.equation,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Text(
            result.result,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(color: Colors.white, fontSize: 36),
          ),
        ],
      ),
    );
  }
}
