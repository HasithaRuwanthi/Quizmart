import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: const TextSpan(
      style: TextStyle(fontSize: 22.0),
      children: <TextSpan>[
        TextSpan(
            text: 'Quiz',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black54,
              letterSpacing: 2.0,
            )),
        TextSpan(
            text: 'Maker',
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.cyan)),
      ],
    ),
  );
}
