import 'package:flutter/material.dart';

class NewsInfoBox extends StatelessWidget {
  const NewsInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .17,
      width: MediaQuery.sizeOf(context).width * .9,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding:
              EdgeInsets.only(top: 16.0, left: 24.0, bottom: 16, right: 60.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sunday, 9 May 2021',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Nunito'),
              ),
              Text(
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                'Crypto investors should be prepared to lose all their money, BOE governor says',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'reda'),
              ),
              Text(
                'Published by Ryan Browne',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Nunito'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
