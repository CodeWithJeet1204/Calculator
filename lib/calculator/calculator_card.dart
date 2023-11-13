import 'package:calculator/calculator/calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculatorCard extends StatefulWidget {
  const CalculatorCard({
    super.key,
    required this.cardText,
    this.padding = const EdgeInsets.all(24),
    this.width = 86,
    this.color = const Color.fromARGB(255, 245, 251, 255),
    this.fontSize = 28,
  });

  final String cardText;
  final EdgeInsetsGeometry padding;
  final double? width;
  final Color? color;
  final double? fontSize;

  @override
  State<CalculatorCard> createState() => _CalculatorCardState();
}

class _CalculatorCardState extends State<CalculatorCard> {
  @override
  Widget build(BuildContext context) {
    final calcModel = Provider.of<CalculatorModel>(context);
    return SizedBox(
      width: widget.width,
      child: Card(
        color: widget.color,
        child: InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          splashColor: widget.color!.withOpacity(1),
          onTap: () {
            if (calcModel.calcText.isEmpty) {
              if (widget.cardText == "⌫" ||
                  widget.cardText == "=" ||
                  widget.cardText == "÷" ||
                  widget.cardText == "x" ||
                  widget.cardText == "+" ||
                  widget.cardText == "-" ||
                  widget.cardText == "%") {
                Provider.of<CalculatorModel>(context, listen: false)
                    .addCardText(cardText: "");
              }
            }
            if (widget.cardText == "C") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .resetCalcText();
            } else if (widget.cardText == "⌫") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .removeLastInt();
            } else if (widget.cardText == "÷") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .addCardText(cardText: " ÷ ");
            } else if (widget.cardText == "x") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .addCardText(cardText: " x ");
            } else if (widget.cardText == "+") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .addCardText(cardText: " + ");
            } else if (widget.cardText == "-") {
              Provider.of<CalculatorModel>(context, listen: false)
                  .addCardText(cardText: " - ");
            } else if (widget.cardText == "=") {
              Provider.of<CalculatorModel>(context, listen: false).calculate();
            } else {
              setState(() {
                calcModel.addCardText(cardText: widget.cardText);
              });
            }
          },
          child: Padding(
            padding: widget.padding,
            child: Text(
              widget.cardText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
