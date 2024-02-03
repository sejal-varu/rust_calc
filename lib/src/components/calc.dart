import 'package:flutter/material.dart';
import 'package:rust_calc/src/rust/api/calculator.dart';

class RustCalculator extends StatefulWidget {
  const RustCalculator({
    super.key,
  });

  @override
  State<RustCalculator> createState() => _RustCalculatorState();
}

class _RustCalculatorState extends State<RustCalculator> {
  String exp = '';
  String result = '';

  void calculate() async {
    final String tmp = await rustCalculate(exp: exp);
    setState(() {
      result = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.calculate_outlined),
              labelText: 'Your calculation expression',
              hintText: '1 feet in inches',
              filled: true,
            ),
            onChanged: (String val) {
              setState(() {
                exp = val;
              });
            },
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              debugPrint('Received click');
              calculate();
            },
            child: const Text('Calculate now'),
          ),
          const SizedBox(height: 10),
          Text(
            "Output: $result",
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
