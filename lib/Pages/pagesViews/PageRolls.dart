import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class PageRolls extends StatefulWidget {
  @override
  State<PageRolls> createState() => _PageRolls();
}

class _PageRolls extends State<PageRolls> {

  @override
  Widget build(BuildContext context) {
    double widthContainer = MediaQuery
        .of(context)
        .size
        .width/3-10;
    double heigthContainer = 120;

    Future openDialog(int result) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            title: const Text('Resultado do Roll:'),
            content: Container(
              margin: const EdgeInsets.only(top: 20),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20,left: 5),
              height: heigthContainer,
              width: widthContainer,
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
              margin: const EdgeInsets.only(top: 20),
              height: heigthContainer,
              width: widthContainer,
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
              margin: const EdgeInsets.only(top: 20,right: 5),
              height: heigthContainer,
              width: widthContainer,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, left: 5),
              height: heigthContainer,
              width: widthContainer,
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
              margin: const EdgeInsets.only(top: 20),
              height: heigthContainer,
              width: widthContainer,
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
              margin: const EdgeInsets.only(top: 20,right: 5),
              height: heigthContainer,
              width: widthContainer,
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
