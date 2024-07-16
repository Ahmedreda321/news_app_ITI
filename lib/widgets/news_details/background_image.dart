import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/images/images.dart';

Widget buildBackgroundImage(BuildContext context) {
  return Positioned(
    top: 0,
    child: SizedBox(
      height: MediaQuery.sizeOf(context).height * .55,
      width: MediaQuery.sizeOf(context).width,
      child: Image.asset(mainLogo, fit: BoxFit.cover),
    ),
  );
}
