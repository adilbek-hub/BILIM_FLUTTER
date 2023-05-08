import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final res = weight / pow(height / 100, 2);
    return res;
  }

  String bmiResult(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Сиз арыксыз';
    } else if (res >= 18.6 && res <= 25) {
      // print('Сиздин салмагыңыз нормалдуу:$res');
      return 'Нормалдуу';
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз Ашыкча салмактуусуз:$res');
      return 'Сиз Ашыкча салмактуусуз';
    } else {
      return 'Сиз семиссиз';
    }
  }

  String bmiDescription(res) {
    if (res <= 18.5) {
      // print('Сиз арыксыз:$res');
      return 'Сиз арыксыз, тамактануу нормаңызды карап коюуңуз шарт';
    } else if (res >= 18.6 && res <= 25) {
      // print('Сиздин салмагыңыз нормалдуу:$res');
      return 'Сиздин дене салмагыңыз нормалдуу. Азаматсыз!';
    } else if (res >= 25.1 && res <= 30) {
      // print('Сиз Ашыкча салмактуусуз:$res');
      return 'Сиз Ашыкча салмактуу экенсиз, спорт менен алектениңиз!!!';
    } else {
      return 'Сиз семизсиз, срочно фитнес клубка барыңыз!! Аз жеңиз!!';
    }
  }
}
