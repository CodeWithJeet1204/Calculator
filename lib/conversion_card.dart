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
    return Card(
      child: Column(
        children: [
          Image.asset(widget.conversionImagePath),
          Text(widget.conversionText),
        ],
      ),
    );
  }
}
