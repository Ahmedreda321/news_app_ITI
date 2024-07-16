import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/icons/icons.dart';

Widget buildFloatingActionButton() {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Image.asset(icon1),
      ),
    ),
  );
}
