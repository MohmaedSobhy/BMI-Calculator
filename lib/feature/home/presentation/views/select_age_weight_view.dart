import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custome_card.dart';

class SelectAgeWeightView extends StatelessWidget {
  const SelectAgeWeightView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Expanded(
                child: CustomeCard(
                  label: "WEIGHT",
                  txtDigite: AppCubit.getInstance().weight.toString(),
                  tapIncrease: () {
                    AppCubit.getInstance().increaseWeight();
                  },
                  tapDecrease: () {
                    AppCubit.getInstance().decreaseWeight();
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: CustomeCard(
                  label: "AGE",
                  txtDigite: AppCubit.getInstance().age.toString(),
                  tapIncrease: () {
                    AppCubit.getInstance().increaseAge();
                  },
                  tapDecrease: () {
                    AppCubit.getInstance().decreaseAge();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
