import 'dart:math';

import 'package:flutter/material.dart';

class PageRolls extends StatefulWidget {
  @override
  State<PageRolls> createState() => _PageRolls();
}

class _PageRolls extends State<PageRolls> {
  rollD20() {
    return Random().nextInt(20) + 1;
  }

  @override
  Widget build(BuildContext context) {
    Future openDialog(int result) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Resultado do Roll:'),
            content: Container(
              margin: const EdgeInsets.all(20),
              height: 200,
              width: 160,
              child: Center(
                child: Text(
                  '$result',
                  style: const TextStyle(fontSize: 42),
                ),
              ),
            )));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(4) + 1);
                },
                child: const Text('d4'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(6) + 1);
                },
                child: const Text('d6'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(8) + 1);
                },
                child: const Text('d8'),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(10) + 1);
                },
                child: const Text('d10'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(12) + 1);
                },
                child: const Text('d12'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              height: 100,
              width: 80,
              color: Colors.black38,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.black38),
                onPressed: () {
                  openDialog(Random().nextInt(20) + 1);
                },
                child: const Text('d20'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
