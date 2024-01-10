import 'package:bmi_calculator/feature/home/presentation/controller/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  bool isMale = true;
  int height = 100;
  int age = 50;
  int weight = 50;
  static AppCubit get(context) {
    return BlocProvider.of(context);
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
