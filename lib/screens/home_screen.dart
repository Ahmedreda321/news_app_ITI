import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/category_widget.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/local_news.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/notification_icon.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/latest_news.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/featured_article.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenSize.width * 0.04),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.042,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: screenSize.height * 0.05,
                    width: screenSize.width * 0.75,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.02,
                          horizontal: screenSize.width * 0.03,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        ),
                        labelStyle: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: screenSize.width * 0.032,
                          color: Colors.black,
                        ),
                        labelText: 'Dogecoin to the Moon...',
                        suffixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const NotificationIcon(),
                ],
              ),
            ),
            const SliverToBoxAdapter(child: LatestNews()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.29,
                width: screenSize.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const FeaturedArticle();
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.03,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.046,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: category_list.length,
                  itemBuilder: (context, i) {
                    return CategoryWidget(catmodel: category_list[i]);
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenSize.height * 0.03,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return const LocalNews();
                },
                childCount: 5,
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(screenSize.width * 0.07),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/home_icon.png'),
                  color: Color(0xFFA6A6A6),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Favorite_icon.png'),
                  color: Color(0xFFA6A6A6),
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/Profile_icon.png'),
                    color: Color(0xFFA6A6A6)),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
