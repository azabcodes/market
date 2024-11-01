import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget logo() {
  return Container(
    height: 60,
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        const Text(
          "Market",
          style: TextStyle(
              fontSize: 52,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontFamily: "Google Sans"),
        ),
        const SizedBox(
          width: 1,
        ),
        Positioned(
          bottom: 1,
          right: -10,
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber,
            ),
          ),
        )
      ],
    ),
  );
}
