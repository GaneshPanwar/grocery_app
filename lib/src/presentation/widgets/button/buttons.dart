import 'package:flutter/material.dart';

class ButtonElevated extends StatelessWidget {
  const ButtonElevated(
      {super.key, required this.text, required this.onPressed, this.divideby});

  final String text;
  final double? divideby;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xfffafafa),
        ),
        surfaceTintColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xfffafafa),
        ),
        elevation: MaterialStateProperty.all(10),
        maximumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.sizeOf(context).width / (divideby ?? 1.1),
            100,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(
            MediaQuery.sizeOf(context).width / (divideby ?? 1.1),
            50,
          ),
        ),
      ),
      child: Text(text),
    );
  }
}