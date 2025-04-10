import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String contadorDeItensDaSacola() {
    String num;
    int number = Random().nextInt(9);
    if (number > 9) {
      num = '+9';
    } else {
      num = number.toString();
    }

    return num;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 35, right: 35),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //Botão de menu
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.menu),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DELIVER TO',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sen',
                        color: Color(0xFFFC6E2A),
                      ),
                    ),
                    Text(
                      'Halal Lab office',
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'Sen',
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.store),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
