import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constansts.dart';
import '../../controller/app_cubit.dart';
import '../controller/app_state.dart';
import '../model/calculator_brain.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custome_card.dart';
import '../../../core/widgets/gender_card.dart';
import 'result_screen.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static String id = "HomePage";
  bool isMale = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        elevation: 3.0,
        backgroundColor: const Color(0xFF111328),
      ),
      body: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: GenderCard(
                      background:
                          cubit.isMale ? activeCardColour : inActiveCardColour,
                      label: "Male",
                      icon: Icons.male,
                      ontap: () {
                        cubit.changeGender();
                      },
                    )),
                    Expanded(
                        child: GenderCard(
                      background:
                          cubit.isMale ? inActiveCardColour : activeCardColour,
                      label: "Female",
                      icon: Icons.female,
                      ontap: () {
                        cubit.changeGender();
                      },
                    )),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: inActiveCardColour,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Height",
                            style: TextStyle(color: Colors.grey, fontSize: 28),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                cubit.height.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "CM",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SliderTheme(
                              data: const SliderThemeData(
                                inactiveTickMarkColor: Color(0xFF8D8E98),
                                activeTrackColor: Colors.white,
                                thumbColor: Color(0xFFEB1555),
                                overlayColor: Color(0x29EB1555),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 30.0),
                              ),
                              child: Slider(
                                value: cubit.height.toDouble(),
                                onChanged: (value) {
                                  cubit.changeSlider(value);
                                },
                                min: 50,
                                max: 200,
                              ))
                        ]),
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomeCard(
                        label: "WEIGHT",
                        txtDigite: cubit.weight.toString(),
                        tapIncrease: () {
                          cubit.increaseWeight();
                        },
                        tapDecrease: () {
                          cubit.decreaseWeight();
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomeCard(
                        label: "AGE",
                        txtDigite: cubit.age.toString(),
                        tapIncrease: () {
                          cubit.increaseAge();
                        },
                        tapDecrease: () {
                          cubit.decreaseAge();
                        },
                      ),
                    ),
                  ],
                ),
              )),
              CustomButton(
                  onTap: () {
                    CalculatorBrain calc = CalculatorBrain(
                        height: cubit.height, weight: cubit.weight);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ResultScreen(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      );
                    }));
                  },
                  label: "CALCULATE"),
            ],
          );
        },
      ),
    );
  }
}
