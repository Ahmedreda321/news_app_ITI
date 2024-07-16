import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LatestNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          const Text(
            ' Latest News',
            style: TextStyle(
                fontFamily: 'reda', fontSize: 18, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Row(
              children: [
                Text(
                  'See All   ',
                  style: TextStyle(
                    color: Color(0xFF0080FF),
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                  color: Color(0xFF0080FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
