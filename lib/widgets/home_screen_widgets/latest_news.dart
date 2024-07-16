import 'package:flutter/material.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(bottom: screenSize.height * 0.02),
      child: Row(
        children: [
          Text(
            ' Latest News',
            style: TextStyle(
              fontFamily: 'reda',
              fontSize: screenSize.width * 0.045,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'See All   ',
                  style: TextStyle(
                    color: const Color(0xFF0080FF),
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: screenSize.width * 0.03,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: screenSize.width * 0.05,
                  color: const Color(0xFF0080FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
