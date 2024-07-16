import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/news_details_screen.dart';

class LocalNews extends StatelessWidget {
  const LocalNews({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const NewsDetailsScreen()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: screenSize.height * 0.005),
        padding: EdgeInsets.only(
            right: screenSize.width * 0.025,
            left: screenSize.width * 0.035,
            top: screenSize.height * 0.01,
            bottom: screenSize.height * 0.02),
        height: screenSize.height * 0.16,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xff626262), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(screenSize.width * 0.02),
          image: const DecorationImage(
            image: AssetImage(
              'assets/images/WhatsApp Image 2024-07-14 at 19.22.51_45ca1e5f.jpg',
            ),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Crypto investors should be prepared to lose all their money, BOE governor says',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.3,
                color: Colors.white,
                fontFamily: 'reda',
                fontSize: screenSize.width * 0.037,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '“Matt Villano”',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width * 0.030,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'nunito',
                  ),
                ),
                Text(
                  '“Sunday, 9 May 2021”',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width * 0.030,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'nunito',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
