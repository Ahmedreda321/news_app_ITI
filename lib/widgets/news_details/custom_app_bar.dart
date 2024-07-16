import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: 52,
    toolbarHeight: 32,
    leading: _buildLeadingButton(context),
    backgroundColor: Colors.transparent,
  );
}

Widget _buildLeadingButton(BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(left: 16.0),
    height: 32,
    width: 32,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xffF5F5F5).withOpacity(0.5),
    ),
    child: IconButton(
      onPressed: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (Route<dynamic> route) => false,
        );
      },
      icon: Image.asset(
        'assets/images/Vector.png',
        height: 15,
        width: 8.55,
      ),
    ),
  );
}
