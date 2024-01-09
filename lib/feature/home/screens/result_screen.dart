import 'package:bmi_calculator/core/colors/app_color.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        elevation: 3.0,
        backgroundColor: const Color(0xFF111328),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
                child: Text(
              "Your Result ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.redColor,
                fontSize: 30.0,
              ),
            )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.activeCardColour,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            resultText,
                            style: const TextStyle(
                              color: Color(0xFF24D876),
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            bmiResult,
                            style: const TextStyle(
                              fontSize: 100.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            interpretation,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ]),
                  ),
                )),
            CustomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                label: "RE-CALCULATE")
          ],
        ),
      ),
    );
  }
}
