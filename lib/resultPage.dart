// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key, required this.result, required this.isMale, required this.age})
      : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = "";
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result >= 26) {
      resultText = 'Overweight';
    } else if (result >= 18.5) {
      resultText = 'Normal';
    } else {
      resultText = 'Underweight';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Result',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
          child: DefaultTextStyle(
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Oswald'),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(
                      flex: 7,
                    ),
                    Text('Gender: ${isMale ? 'Male' : 'Female'}'),
                    const Spacer(
                      flex: 1,
                    ),
                    Text('Result: ${result.toStringAsFixed(1)}'),
                    const Spacer(
                      flex: 1,
                    ),
                    Text('Healthiness: $resultPhrase'),
                    const Spacer(
                      flex: 1,
                    ),
                    Text('Age: $age'),
                    const Spacer(
                      flex: 10,
                    )
                  ],
                ),
              ))),
    );
  }
}
