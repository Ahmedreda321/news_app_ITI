import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/utils/images/images.dart';
import 'package:readmore/readmore.dart';

class HotUpdateScreen extends StatelessWidget {
  const HotUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
              (Route<dynamic> route) => false,
            );
          },
          icon: Image.asset(
            'assets/images/Vector.png',
            height: 15,
            width: 8.55,
          ),
        ),
        title: const Text(
          'Hot Update',
          style: TextStyle(
              color: Color(0xffFF3A44),
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'sfpro'),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const HotUpdateWidget();
        },
      ),
    );
  }
}

class HotUpdateWidget extends StatelessWidget {
  const HotUpdateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            item1, // ضع المسار الصحيح للصورة هنا
            height: MediaQuery.of(context).size.height * .157,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.02), // مسافة بين الصورة والتاريخ
          const Text(
            'Monday, 10 May 2021',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                fontFamily: 'nunito'),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.01), // مسافة بين التاريخ والعنوان
          const Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            'WHO classifies triple-mutant Covid variant from India as global health risk',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'reda'),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.02), // مسافة بين العنوان والنص الرئيسي
          const ReadMoreText(
            'A World Health Organization official said Monday it is reclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifyingreclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a',
            trimLines: 4,
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Read more',
            trimExpandedText: ' Show less',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: 'nunito',
            ),
            moreStyle: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            lessStyle: TextStyle(
              color: Colors.blue,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height *
                  0.02), // مسافة بين النص الرئيسي ونص المؤلف
          const Text(
            'Published by Berkeley Lovelace Jr.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                fontFamily: 'nunito'),
          ),
        ],
      ),
    );
  }
}
