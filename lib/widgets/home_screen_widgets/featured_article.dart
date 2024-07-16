import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/news_details_screen.dart';

class FeaturedArticle extends StatelessWidget {
  const FeaturedArticle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const NewsDetailsScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenSize.width * 0.01),
        padding: EdgeInsets.all(screenSize.width * 0.03),
        height: screenSize.height * 0.29,
        width: screenSize.width * 0.856,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.transparent, Colors.black],
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'by Ryan Browne',
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.03,
                fontFamily: 'nunito',
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Crypto investors should be prepared to lose all their money, BOE governor says',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.3,
                color: Colors.white,
                fontFamily: 'reda',
                fontSize: screenSize.width * 0.04,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: screenSize.height * 0.02),
            Text(
              '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenSize.width * 0.025,
                fontWeight: FontWeight.w400,
                fontFamily: 'nunito',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
