import 'package:flutter/material.dart';

class ConversionCard extends StatefulWidget {
  const ConversionCard({
    super.key,
    required this.conversionText,
    required this.conversionImagePath,
  });
  final String conversionText;
  final String conversionImagePath;

  @override
  State<ConversionCard> createState() => _ConversionCardState();
}

class _ConversionCardState extends State<ConversionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromARGB(255, 4, 79, 141),
          width: 2,
        ),
      ),
      width: 150,
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                widget.conversionImagePath,
                width: 75,
                color: const Color.fromARGB(255, 4, 79, 141),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.conversionText,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
