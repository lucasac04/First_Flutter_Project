import 'dart:math';
import 'package:flutter/material.dart';
import 'package:teste/widgets/custom_button_widget.dart';


class PageRolls extends StatefulWidget {
  const PageRolls({super.key});

  @override
  State<PageRolls> createState() => _PageRolls();
}

class _PageRolls extends State<PageRolls> {

  @override
  Widget build(BuildContext context) {
    double widthContainer = MediaQuery.of(context).size.width / 3 - 10;
    double heigthContainer = 120;
    Future openDialog(int result) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFFBEBEBE),
            title: const Text('Resultado do Roll:'),
            content: Container(
              margin: const EdgeInsets.only(top: 20),
              height: 180,
              width: 140,
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
              margin: const EdgeInsets.only(top: 20, left: 5),
              height: heigthContainer,
              width: widthContainer,
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(4) + 1;
                  openDialog(result);
                },
                title: 'd4',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: heigthContainer,
              width: widthContainer,
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(6) + 1;
                  openDialog(result);
                },
                title: 'd6',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 5),
              height: heigthContainer,
              width: widthContainer,
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(8) + 1;
                  openDialog(result);
                },
                title: 'd8',
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
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(10) + 1;
                  openDialog(result);
                },
                title: 'd10',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: heigthContainer,
              width: widthContainer,
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(12) + 1;
                  openDialog(result);
                },
                title: 'd12',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, right: 5),
              height: heigthContainer,
              width: widthContainer,
              color: Colors.transparent,
              child: CustomButtonWidget(
                onPressed: () {
                  int result = Random().nextInt(20) + 1;
                  openDialog(result);
                },
                title: 'd20',
              ),
            ),
          ],
        )
      ],
    );
  }
}
