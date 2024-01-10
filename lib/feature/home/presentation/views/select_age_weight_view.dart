import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custome_card.dart';

class SelectAgeWeightView extends StatelessWidget {
  const SelectAgeWeightView({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
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
        );
      },
    );
  }
}
