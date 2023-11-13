import 'package:calculator/conversion_card.dart';
import 'package:flutter/material.dart';

class OthersPage extends StatelessWidget {
  const OthersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text("Other Conversions"),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              ConversionCard(
                conversionText: 'Length',
                conversionImagePath: 'images/length.png',
              ),
            ],
          ),
          Row(
            children: [],
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
