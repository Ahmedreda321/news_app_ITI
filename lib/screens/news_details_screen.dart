import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/news_details/background_image.dart';
import 'package:flutter_application_1/widgets/news_details/content_background.dart';
import 'package:flutter_application_1/widgets/news_details/custom_app_bar.dart';
import 'package:flutter_application_1/widgets/news_details/floating_action_button.dart';
import 'package:flutter_application_1/widgets/news_details/news_info_box.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(),
      backgroundColor: Colors.black12,
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              buildBackgroundImage(context),
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
                            buildContentBackground(context),
                            const NewsInfoBox(),
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
