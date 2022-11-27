import 'Calculator.dart';

void main(List<String> args) {
  try {
    //Method :  Addtiton
    var addItems = Calculator();
    addItems.addition();
    
    //ALTERNATIVE FOR ADDTION

    Calculator.specificMethodConstructor('addition');

    //Method : Subtraction
    var subtractItems = Calculator();
    subtractItems.subtraction();

    //ALTERNATIVE FOR SUBTRACTION

    Calculator.specificMethodConstructor('subtraction');

    //Method : Division

    var divideItems = Calculator();
    divideItems.division();

    //ALTERNATIVE FOR DIVISION

    var div = Calculator();
    div.calculate('division');

    //Method : Multiplication
    var multiplyItems = Calculator();
    multiplyItems.multiplication();

    //ALTERNATIVE FOR MULTIPLICATION

    Calculator.specificMethodConstructor('multiplication');

    //Method : tangent
    var findTan = Calculator();
    findTan.Tan();

    //ALTERNATIVE FOR tangent

    Calculator.trigonometryCalculator('tan');

    //cosine
    var findCos = Calculator();
    findCos.Cos();

    //ALTERNATIVE FOR COSINE

    Calculator.trigonometryCalculator('Cos');

    //Method :sin

    var findSin = Calculator();
    findSin.Sin();

    //ALTERNATIVE FOR Sine

    Calculator.trigonometryCalculator('tan');

    //Area of a circle
    var findAreaCircle = Calculator();
    findAreaCircle.area_of_Acircle();

    //ALTERNATIVE FOR tangent

    Calculator.areaCulculator('circle');
    //Area of a rectangle

    Calculator.areaCulculator('rectangle');

    //Calling a non existing method
    Calculator.specificMethodConstructor('floor division');
  } catch (FormatError) {
    print('Wrong input! Input must be numeric');
  }
}
