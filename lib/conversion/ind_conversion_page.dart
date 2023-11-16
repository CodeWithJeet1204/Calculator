import 'package:calculator/conversion/conversion_logic.dart';
import 'package:calculator/conversion/conversion_units.dart';
import 'package:flutter/material.dart';

class IndividualConversionPage extends StatefulWidget {
  const IndividualConversionPage({
    super.key,
    required this.conversionTitle,
    required this.defaultFirstValue,
    required this.defaultSecondValue,
  });

  final String conversionTitle;
  final String defaultFirstValue;
  final String defaultSecondValue;

  @override
  State<IndividualConversionPage> createState() =>
      _IndividualConversionPageState();
}

class _IndividualConversionPageState extends State<IndividualConversionPage> {
  TextEditingController convertController = TextEditingController();
  double value = 0;
  late String firstSelectedValue;
  late String secondSelectedValue;

  @override
  void initState() {
    super.initState();
    firstSelectedValue = conversionUnits[widget.conversionTitle]![4];
    secondSelectedValue = conversionUnits[widget.conversionTitle]![0];
  }

  double convertParameter() {
    print(firstSelectedValue);
    print(secondSelectedValue);
    print(value);
    if (widget.conversionTitle == "Length") {
      setState(() {});
      return convertlength(value, firstSelectedValue, secondSelectedValue);
    }
    if (widget.conversionTitle == "Area") {
      setState(() {});
      return convertarea(value, firstSelectedValue, secondSelectedValue);
    }
    if (widget.conversionTitle == "Volume") {
      setState(() {});
      return convertvolume(value, firstSelectedValue, secondSelectedValue);
    }
    if (widget.conversionTitle == "Temperature") {
      setState(() {});
      return convertvolume(value, firstSelectedValue, secondSelectedValue);
    }
    if (widget.conversionTitle == "Weight") {
      setState(() {});
      return convertweight(value, firstSelectedValue, secondSelectedValue);
    }
    if (widget.conversionTitle == "Currency") {
      setState(() {});
      return convertcurrency(value, firstSelectedValue, secondSelectedValue);
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.conversionTitle),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue.shade100,
            ),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DropdownMenu<String>(
                          onSelected: (String? newValue) {
                            setState(() {
                              firstSelectedValue = newValue!;
                            });
                          },
                          width: 150,
                          dropdownMenuEntries: [
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![0],
                              label:
                                  conversionUnits[widget.conversionTitle]![0],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![1],
                              label:
                                  conversionUnits[widget.conversionTitle]![1],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![2],
                              label:
                                  conversionUnits[widget.conversionTitle]![2],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![3],
                              label:
                                  conversionUnits[widget.conversionTitle]![3],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![4],
                              label:
                                  conversionUnits[widget.conversionTitle]![4],
                            ),
                          ],
                          label: Text(
                            widget.defaultFirstValue,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 32,
                        ),
                        DropdownMenu<String>(
                          onSelected: (String? newValue) {
                            setState(() {
                              secondSelectedValue = newValue!;
                            });
                          },
                          width: 150,
                          dropdownMenuEntries: [
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![0],
                              label:
                                  conversionUnits[widget.conversionTitle]![0],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![1],
                              label:
                                  conversionUnits[widget.conversionTitle]![1],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![2],
                              label:
                                  conversionUnits[widget.conversionTitle]![2],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![3],
                              label:
                                  conversionUnits[widget.conversionTitle]![3],
                            ),
                            DropdownMenuEntry(
                              value:
                                  conversionUnits[widget.conversionTitle]![4],
                              label:
                                  conversionUnits[widget.conversionTitle]![4],
                            ),
                          ],
                          label: Text(
                            widget.defaultSecondValue,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: TextField(
              controller: convertController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Enter Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(36),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ))),
            ),
          ),
          const SizedBox(height: 18),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 188, 211, 255),
              foregroundColor: const Color.fromARGB(255, 3, 65, 182),
              fixedSize: const Size(150, 45),
            ),
            onPressed: convertParameter,
            child: const Text(
              "Convert",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 205, 232, 255),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 100,
              child: Text(
                value.toString(),
                style: const TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 41, 73),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
