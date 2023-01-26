import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const CustomButtonWidget({
    Key? key,
    required this.onPressed,
    required this.title

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
      ElevatedButton.styleFrom(backgroundColor: Colors.black38),
      onPressed: onPressed,
      child:Text(title),
    );
  }
}

