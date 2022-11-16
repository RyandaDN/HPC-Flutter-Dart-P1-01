import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  void add() {
    counter++;
  }

  void minus() {
    counter--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              '$counter',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 171, 2),
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        minus();
                      });
                    }),
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: (() {
                      setState(() {
                        add();
                      });
                    }),
                    child: Icon(Icons.add))
              ],
            )
          ],
        ),
      ),
    );
  }
}
