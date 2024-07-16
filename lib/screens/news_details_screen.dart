import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/utils/icons/icons.dart';
import 'package:flutter_application_1/utils/images/images.dart';
import 'package:flutter_application_1/widgets/news_details/news_content.dart';
import 'package:flutter_application_1/widgets/news_details/news_info_box.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: Image.asset(icon1),
          ),
        ),
      ),
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 52,
        toolbarHeight: 32,
        leading: Container(
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
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .55,
                  width: MediaQuery.sizeOf(context).width,
                  //color: Colors.blue,
                  child: Image.asset(mainLogo, fit: BoxFit.cover),
                ),
              ),
              CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * .40,
                        ),
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: MediaQuery.sizeOf(context).height * .05),
                              width: MediaQuery.sizeOf(context).width,
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.sizeOf(context).width * .0625,
                                  right:
                                      MediaQuery.sizeOf(context).width * .0625,
                                  top: MediaQuery.sizeOf(context).height * .13),
                              constraints: BoxConstraints(
                                minHeight:
                                    MediaQuery.sizeOf(context).height * .5,
                                minWidth: MediaQuery.sizeOf(context).width,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: const NewsContent(),
                            ),
                            const NewsInfoBox()
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
