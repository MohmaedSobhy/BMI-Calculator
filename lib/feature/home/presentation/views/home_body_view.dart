import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_button.dart';
import '../controller/app_cubit.dart';
import '../screens/result_screen.dart';
import 'gender_type_view.dart';
import 'select_age_weight_view.dart';
import 'select_heigth_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Column(
          children: [
            const Expanded(
              child: GenderTypeView(),
            ),
            const Expanded(
              child: SelectHeightView(),
            ),
            const Expanded(
              child: SelectAgeWeightView(),
            ),
            CustomButton(
              onTap: () {
                AppCubit.getInstance().getCalculationResult();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ResultScreen();
                }));
              },
              label: "CALCULATE",
            ),
          ],
        );
      },
    );
  }
}
