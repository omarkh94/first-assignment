void main() {
  double? calculate(double? num1, double? num2, String? operation) {
    // reassign the parameters to zero if it null 
    num1 ??= 0.0;
     num2 ??= 0.0;

    switch (operation) {
      case "+":
        return num1 + num2;
      case "*":
        return num1 * num2;
      case "/":
        if (num2 != 0.0) {
          return num1 / num2;
        }
        print("num2 can't be zero");
        return 0.0;

      case "-":
        return num1 - num2;
      case "%":
        if (num2 != 0.0) {
          return num1 % num2;
        }
        print("num2 can't be zero");
        return 0.0;
      default:
        return num1 + num2;
    }
  }

  // test cases 
  print(calculate(10, 5, "/")); // 2.0
  print(calculate(10, 0, "/")); // 0.0
  print(calculate(10, 0, "%")); //  0.0
  print(calculate(10, 2, "%")); //  0.0
}
