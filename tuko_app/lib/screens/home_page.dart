import 'package:flutter/material.dart';
import 'package:tuko_app/screens/family_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';
import '../widgets/widgets.dart';
import 'colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku App'),
        backgroundColor: const Color(0xff46322B),
        elevation: 0,
      ),
      body: Column(
        children: [
          CategoryItem(
            text: 'Members',
            color: const Color.fromARGB(216, 231, 172, 35),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
          ),
          CategoryItem(
            text: 'Family Members',
            color: const Color.fromARGB(167, 87, 160, 50),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembers();
              }));
            },
          ),
          CategoryItem(
            text: 'Colors',
            color: const Color.fromARGB(167, 88, 32, 178),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const ColorsMembers();
              }));
            },
          ),
          CategoryItem(
            text: 'Phrases',
            color: const Color.fromARGB(219, 8, 191, 241),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const PhrasesMembers();
              }));
            },
          ),
        ],
      ),
    );
  }
}
