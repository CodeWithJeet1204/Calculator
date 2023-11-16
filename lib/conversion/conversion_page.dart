import 'package:calculator/conversion/conversion_card.dart';
import 'package:calculator/conversion/ind_conversion_page.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Length',
                            defaultFirstValue: 'Metre (m)',
                            defaultSecondValue: 'Kilometre (km)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Length',
                  conversionImagePath: 'images/length.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Area',
                            defaultFirstValue: 'Metre sq. (m²)',
                            defaultSecondValue: 'Kilometre sq. (km²)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Area',
                  conversionImagePath: 'images/area.png',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Volume',
                            defaultFirstValue: 'Metre Cube (m³)',
                            defaultSecondValue: 'Kilometre Cube (km³)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Volume',
                  conversionImagePath: 'images/volume.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Temperature',
                            defaultFirstValue: 'Celsius (C)',
                            defaultSecondValue: 'Fahreineit (F)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Temperature',
                  conversionImagePath: 'images/temperature.png',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Currency',
                            defaultFirstValue: 'Rupees (INR)',
                            defaultSecondValue: 'US Dollar (USD)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Currency',
                  conversionImagePath: 'images/currency.png',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const IndividualConversionPage(
                            conversionTitle: 'Weight',
                            defaultFirstValue: 'Gram (g)',
                            defaultSecondValue: 'Kilogram (kg)',
                          )),
                    ),
                  );
                },
                child: const ConversionCard(
                  conversionText: 'Weight',
                  conversionImagePath: 'images/weight.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
