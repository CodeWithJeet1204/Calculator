import 'package:calculator/calculator/calculator_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Stack<T> {
  final List<T> _elements = [];

  bool isEmpty() {
    return _elements.isEmpty;
  }

  bool isNotEmpty() {
    return !isEmpty();
  }

  T pop() {
    if (_elements.isEmpty) {
      throw Exception("Stack is empty");
    }

    return _elements.removeLast();
  }

  void push(T element) {
    _elements.add(element);
  }

  int get length => _elements.length;
}

double calculateExpression(String expression) {
  // Split the expression into tokens.
  List<String> tokens = expression.split(" ");

  // Create a stack to store the operands and operators.
  Stack<double> operands = Stack<double>();
  Stack<String> operators = Stack<String>();

  // Iterate over the tokens.
  for (int i = 0; i < tokens.length; i++) {
    // If the token is an operand, push it onto the operands stack.
    if (tokens[i] == "+" ||
        tokens[i] == "-" ||
        tokens[i] == "x" ||
        tokens[i] == "÷") {
      operators.push(tokens[i]);
    } else {
      operands.push(double.parse(tokens[i]));
    }

    // While there are at least two operands and one operator on the stacks, perform the operation.
    while (operands.length >= 2 && operators.isNotEmpty()) {
      double operand2 = operands.pop();
      double operand1 = operands.pop();
      String operator = operators.pop();

      double result = 0.0;
      switch (operator) {
        case "+":
          result = add(operand1, operand2);
          break;
        case "-":
          result = subtract(operand1, operand2);
          break;
        case "x":
          result = multiply(operand1, operand2);
          break;
        case "÷":
          result = divide(operand1, operand2);
          break;
      }

      // Push the result onto the operands stack.
      operands.push(result);
    }
  }

  // The last operand on the stack is the result of the expression.
  return operands.pop();
}

// Define the add(), subtract(), multiply(), and divide() functions.
double add(double operand1, double operand2) {
  return operand1 + operand2;
}

double subtract(double operand1, double operand2) {
  return operand1 - operand2;
}

double multiply(double operand1, double operand2) {
  return operand1 * operand2;
}

double divide(double operand1, double operand2) {
  return operand1 / operand2;
}

// double remainder(double operand1, double operand2) {
//   return operand1 % operand2;
// }

class CalculatorModel extends ChangeNotifier {
  String calcText = "";

  void addCardText({required String cardText}) {
    calcText += cardText;
    notifyListeners();
  }

  void resetCalcText() {
    calcText = "";
    notifyListeners();
  }

  void removeLastInt() {
    calcText = calcText.substring(0, calcText.length - 1);
    notifyListeners();
  }

  void calculate() {
    double result = calculateExpression(calcText);
    calcText = result.toString();
    notifyListeners();
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Calculator"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 203,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              color: Colors.grey.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              child: Text(
                Provider.of<CalculatorModel>(context).calcText,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 52,
                ),
              ),
            ),
          ),
          const CalculatorWidget(),
        ],
      ),
    );
  }
}
