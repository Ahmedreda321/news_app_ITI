import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/icons/icons.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0),
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xffFF3A44), Color(0xffFF8086)]),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Image.asset(
        notification,
        height: 40,
        width: 40,
      ),
    );
  }
}
