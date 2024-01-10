import 'package:bmi_calculator/feature/home/presentation/controller/app_cubit.dart';
import 'package:bmi_calculator/feature/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 3.0,
            backgroundColor: const Color(0xFF111328),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
