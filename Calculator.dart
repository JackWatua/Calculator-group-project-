import 'dart:io';
import 'AreaCalculator.dart';
import 'trigonometryCalculator.dart';

class Calculator with areaCalculator, TrigonometryCalculator {
  String Operation = 'Calculate';
  Calculator() {
    print('From general calculator constructor ');
  }

  Calculator.specificMethodConstructor(String operation) {
    print('From specific class constructor ');
    this.Operation = operation;
    switch (this.Operation) {
      case 'multiplication':
        this.multiplication();
        break;
      case 'addition':
        this.addition();
        break;
      case 'division':
        this.division();
        break;
      case 'subtraction':
        this.subtraction();
        break;
      default:
        print("Method does not exist!");
        break;
    }
  }

  Calculator.areaCulculator(String figure) {
    print('From specific (area calculator) class constructor ');
    this.Operation = 'area of a ${figure}';
    switch (figure.toLowerCase()) {
      case 'rectangle':
        this.area_of_ARectangle();
        break;
      case 'circle':
        this.area_of_Acircle();
        break;
      default:
        print("No method for ${figure} exists");
    }
  }

  Calculator.trigonometryCalculator(String operation) {
    print('From specific (trigonometry) class constructor ');
    this.Operation = operation.toLowerCase();
    switch (this.Operation) {
      case 'tan':
        this.Tan();
        break;
      case 'cos':
        this.Cos();
        break;
      case 'sin':
        this.Sin();
        break;
      default:
        print("Trigonometry Method does not exist");
    }
  }

  int calculate(String Method) {
    this.Operation = Method;
    switch (this.Operation) {
      case 'multiplication':
        return this.multiplication();
      case 'addition':
        print("Method : ${this.Operation}");
        return this.addition();
      case 'division':
        return this.division();
      case 'subtraction':
        return this.subtraction();
      default:
        print("Method does not exist!");
        return 0;
    }
  }

  int multiplication() {
    this.Operation = 'multiplication';
    print("operation : ${this.Operation}");
    print("Enter value first value");
    var valA = stdin.readLineSync();
    print("Enter value second value");
    var valB = stdin.readLineSync();
    int x = int.parse(valA.toString()) * int.parse(valB.toString());
    print("$valA * $valB = $x");
    return x;
  }

  int addition() {
    this.Operation = 'addition';
    print("operation : ${this.Operation}");
    print("Enter value first value");
    var valA = stdin.readLineSync();
    print("Enter value second value");
    var valB = stdin.readLineSync();
    int x = int.parse(valA.toString()) + int.parse(valB.toString());
    print("$valA + $valB = $x");
    return x;
  }

  int subtraction() {
    this.Operation = 'subtraction';
    print("operation : ${this.Operation}");
    print("Enter value first value");
    var valA = stdin.readLineSync();
    print("Enter value second value");
    var valB = stdin.readLineSync();
    int x = int.parse(valA.toString()) - int.parse(valB.toString());
    print("$valA - $valB = $x");
    return x;
  }

  int division() {
    this.Operation = 'division';
    print("operation : ${this.Operation}");
    print("Enter value first value");
    var valA = stdin.readLineSync();
    print("Enter value second value");
    var valB = stdin.readLineSync();
    int x = int.parse(valA.toString()) ~/ int.parse(valB.toString());
    print("$valA / $valB = $x");
    return x;
  }
}
