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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConversionCard(
                conversionText: 'Length',
                conversionImagePath: 'images/length.png',
              ),
              ConversionCard(
                conversionText: 'Area',
                conversionImagePath: 'images/area.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConversionCard(
                conversionText: 'Volume',
                conversionImagePath: 'images/volume.png',
              ),
              ConversionCard(
                conversionText: 'Temperature',
                conversionImagePath: 'images/temperature.png',
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ConversionCard(
                conversionText: 'Weight',
                conversionImagePath: 'images/weight.png',
              ),
              ConversionCard(
                conversionText: 'Currency',
                conversionImagePath: 'images/currency.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
