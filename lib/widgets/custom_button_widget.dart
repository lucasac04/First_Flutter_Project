import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const CustomButtonWidget(
      {Key? key, required this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.resolveWith<Color>((states) {
            return Colors.transparent;
          }),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) {
              return Colors.transparent;
            },
          ),
        ),
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            //Icon(Icons.) //todo fazer required e ver como importar icons ou criar icons.
          ],
        ));
  }
}
