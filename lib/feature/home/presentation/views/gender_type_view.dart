import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/colors/app_color.dart';
import '../../../../core/widgets/gender_card.dart';

class GenderTypeView extends StatelessWidget {
  const GenderTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: GenderCard(
                background: cubit.isMale
                    ? AppColors.activeCardColour
                    : AppColors.inActiveCardColour,
                label: "Male",
                icon: Icons.male,
                ontap: () {
                  cubit.changeGender();
                },
              ),
            ),
            Expanded(
              child: GenderCard(
                background: cubit.isMale
                    ? AppColors.inActiveCardColour
                    : AppColors.activeCardColour,
                label: "Female",
                icon: Icons.female,
                ontap: () {
                  cubit.changeGender();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
