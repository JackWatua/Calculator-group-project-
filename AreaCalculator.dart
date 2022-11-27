import 'dart:math';
import 'dart:io';

class areaCalculator {
  int area_of_Acircle() {
    print("Area of a circle");
    print('Enter radius');
    String? v = stdin.readLineSync();
    var area = (pi * pow(int.parse(v.toString()), 2)).round();
    print("Area = ${area}");
    return area;
  }

  int area_of_ARectangle() {
    print("Area of a square");
    print('Enter length');
    String? l = stdin.readLineSync();
    print('Enter width');
    String? w = stdin.readLineSync();
    var area = (int.parse(l.toString()) * int.parse(w.toString())).round();
    print("Area = ${area}");
    return area;
  }
}
