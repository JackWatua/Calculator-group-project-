import 'dart:math';
import 'dart:io';

class TrigonometryCalculator {
  double Tan() {
    print("operation : tangent");
    print('Enter value');
    var val = stdin.readLineSync();
    print('tan $val = ${tan(double.parse(val.toString()))}');
    return tan(double.parse(val.toString()));
  }

  double Cos() {
    print('operation cosine');
    print('Enter value');
    var val = stdin.readLineSync();
    print('cos $val = ${cos(double.parse(val.toString()))}');
    return cos(double.parse(val.toString()));
  }

  double Sin() {
    print('operation: sine');
    print('Enter value');
    var val = stdin.readLineSync();
    print('sin $val = ${sin(double.parse(val.toString()))}');
    return sin(double.parse(val.toString()));
  }
}
