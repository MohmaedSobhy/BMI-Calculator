import 'package:bmi_calculator/core/localization/app_string.dart';
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
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: GenderCard(
                background: AppCubit.getInstance().isMale
                    ? AppColors.activeCardColour
                    : AppColors.inActiveCardColour,
                label: AppString.male,
                icon: Icons.male,
                ontap: () {
                  AppCubit.getInstance().changeGender();
                },
              ),
            ),
            Expanded(
              child: GenderCard(
                background: AppCubit.getInstance().isMale
                    ? AppColors.inActiveCardColour
                    : AppColors.activeCardColour,
                label: AppString.female,
                icon: Icons.female,
                ontap: () {
                  AppCubit.getInstance().changeGender();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
