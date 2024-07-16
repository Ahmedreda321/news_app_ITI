import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.catmodel});
  final CategoryModel catmodel;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.01),
      child: OutlinedButton(
        onPressed: () {},
        child: SizedBox(
          width: screenSize.width * 0.25,
          height: screenSize.height * 0.92,
          child: Center(
            child: Text(
              catmodel.typ,
              style: TextStyle(
                fontFamily: 'nunito',
                fontSize: screenSize.width * 0.035,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
