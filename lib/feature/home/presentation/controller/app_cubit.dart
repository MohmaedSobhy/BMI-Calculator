import 'package:bmi_calculator/feature/home/data/model/calculator_brain.dart';
import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit._privateConstructor() : super(AppInitial());

  static AppCubit? appcubit;

  bool isMale = true;
  int height = 100;
  int age = 50;
  int weight = 50;

  String bmiResult = "What time is it?";
  String resultText = "What time is it?";
  String interpretation = "What time is it?";

  static AppCubit getInstance() {
    appcubit ??= AppCubit._privateConstructor();
    return appcubit!;
  }

  void getCalculationResult() {
    CalculatorBrain.height = height;
    CalculatorBrain.weight = weight;
    bmiResult = CalculatorBrain.calculateBMI();
    resultText = CalculatorBrain.getResult();
    interpretation = CalculatorBrain.getInterpretation();
  }

  void changeGender() {
    isMale = !isMale;
    emit(GenderState());
  }

  void changeSlider(double value) {
    height = value.toInt();
    emit(ChangeSlider());
  }

  void increaseAge() {
    age++;
    emit(ChangeAge());
  }

  void decreaseAge() {
    age--;
    emit(ChangeAge());
  }

  void increaseWeight() {
    weight++;
    emit(ChangeWeight());
  }

  void decreaseWeight() {
    weight--;
    emit(ChangeWeight());
  }
}
