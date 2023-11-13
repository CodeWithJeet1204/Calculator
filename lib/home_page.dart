import 'package:calculator/calculator_page.dart';
import 'package:calculator/others_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  Widget currentPage = const CalculatorPage();

  @override
  Widget build(BuildContext context) {
    // Get the current page.
    Widget content = currentPage;

    // Rebuild the bottom navigation bar.
    final bottomNavigationBar = BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (value) {
        // Set the current page to the page that corresponds to the tapped item.
        setState(() {
          _selectedIndex = value;
          currentPage =
              _selectedIndex == 0 ? const CalculatorPage() : const OthersPage();
        });
      },
      selectedItemColor: const Color.fromARGB(255, 4, 79, 141),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calculate),
          label: "Others",
        ),
      ],
    );

    return Scaffold(
      body: content,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
