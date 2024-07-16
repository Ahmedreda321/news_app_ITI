import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/news_details/news_content.dart';

Widget buildContentBackground(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * .05),
    width: MediaQuery.sizeOf(context).width,
    padding: EdgeInsets.only(
      left: MediaQuery.sizeOf(context).width * .04,
      right: MediaQuery.sizeOf(context).width * .04,
      top: MediaQuery.sizeOf(context).height * .12,
    ),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: const NewsContent(),
  );
}
