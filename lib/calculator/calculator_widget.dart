import 'package:calculator/calculator/calculator_card.dart';
// import 'package:calculator/calculator_page.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({super.key});

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    // var calcModel = Provider.of<CalculatorModel>(context);
    return Container(
      height: 505,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Padding(
        padding: EdgeInsets.all(4),
        child: Column(
          children: [
            Row(
              children: [
                CalculatorCard(cardText: "C"),
                CalculatorCard(cardText: "⌫"),
                CalculatorCard(cardText: "÷"),
                CalculatorCard(cardText: "x"),
              ],
            ),
            Row(
              children: [
                CalculatorCard(cardText: "9"),
                CalculatorCard(cardText: "8"),
                CalculatorCard(cardText: "7"),
                CalculatorCard(cardText: "+"),
              ],
            ),
            Row(
              children: [
                CalculatorCard(cardText: "6"),
                CalculatorCard(cardText: "5"),
                CalculatorCard(cardText: "4"),
                CalculatorCard(cardText: "-"),
              ],
            ),
            Row(
              children: [
                CalculatorCard(cardText: "3"),
                CalculatorCard(cardText: "2"),
                CalculatorCard(cardText: "1"),
                CalculatorCard(
                  cardText: "00",
                  fontSize: 25,
                ),
              ],
            ),
            Row(
              children: [
                CalculatorCard(
                  cardText: "0",
                  width: 172,
                  color: Color.fromARGB(255, 190, 217, 252),
                ),
                CalculatorCard(cardText: "."),
                CalculatorCard(
                  cardText: "=",
                  color: Color.fromARGB(255, 255, 218, 149),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
