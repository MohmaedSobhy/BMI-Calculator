import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/colors/app_color.dart';

class SelectHeightView extends StatelessWidget {
  const SelectHeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        var cubit = AppCubit.get(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.activeCardColour,
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
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                  ),
                  child: Slider(
                    value: cubit.height.toDouble(),
                    onChanged: (value) {
                      cubit.changeSlider(value);
                    },
                    min: 50,
                    max: 200,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
