import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/news_details_screen.dart.dart';
import 'package:flutter_application_1/screens/test.dart';
import 'package:flutter_application_1/utils/images/images.dart';

class FeaturedArticle extends StatelessWidget {
  const FeaturedArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MyWidget()));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.all(10),
        height: 240,
        width: 350,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/WhatsApp Image 2024-07-14 at 19.22.51_45ca1e5f.jpg',
            ),
            opacity: 0.5,
            fit: BoxFit.cover,
          ),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'by Ryan Browne',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w800),
            ),
            Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              'Crypto investors should be prepared to lose all their money, BOE governor says',
              style: TextStyle(
                  height: 1.3,
                  color: Colors.white,
                  fontFamily: 'reda',
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15.0),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'nunito'),
            ),
          ],
        ),
      ),
    );
  }
}
