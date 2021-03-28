import 'package:flutter/material.dart';
import 'package:yalla_agaza/res.dart';

Widget centerLogo({double height}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        height: height,
        child: Image.asset(Res.logo1),
      ),
    ],
  );
}
