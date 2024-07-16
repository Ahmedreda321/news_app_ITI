import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/icons/icons.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(left: screenSize.width * 0.04),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xffFF3A44), Color(0xffFF8086)],
        ),
        borderRadius: BorderRadius.circular(screenSize.width * 0.1),
      ),
      child: Image.asset(
        notification,
        height: screenSize.height * 0.05,
        width: screenSize.width * 0.1,
      ),
    );
  }
}
