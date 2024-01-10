import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_observer.dart';
import 'bmi_calculator_app.dart';

void main() {
  Bloc.observer = AppObserver();
  runApp(const BmiCalculator());
}
