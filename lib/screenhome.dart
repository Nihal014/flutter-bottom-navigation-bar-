import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/accounts.dart';
import 'package:flutter_application_1/mainscreen.dart';
import 'package:flutter_application_1/screensearch.dart';

class sreenhome extends StatefulWidget {
  const sreenhome({Key? key}) : super(key: key);

  @override
  State<sreenhome> createState() => _sreenhomeState();
}

class _sreenhomeState extends State<sreenhome> {
  int currntindx = 0;
  final arr = [mainscreen(), screensearch(), screenaccounts()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: arr[currntindx],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.yellow,
          currentIndex: currntindx,
          onTap: (newindex) {
            setState(() {
              currntindx = newindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account')
          ]),
    );
  }
}
