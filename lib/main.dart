import 'package:flutter/material.dart';
import 'package:rust_calc/src/components/calc.dart';
import 'package:rust_calc/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Rust Calculator')),
        body: const Center(child: RustCalculator()),
      ),
    );
  }
}
