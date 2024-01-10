import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../core/colors/app_color.dart';
import '../../../../core/widgets/custom_button.dart';

class ResultBodyView extends StatelessWidget {
  const ResultBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return Padding(
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
            ),
          ),
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
                          cubit.resultText,
                          style: const TextStyle(
                            color: Color(0xFF24D876),
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          cubit.bmiResult,
                          style: const TextStyle(
                            fontSize: 100.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          cubit.interpretation,
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
    );
  }
}
