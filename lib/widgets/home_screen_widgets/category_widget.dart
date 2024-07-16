import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.catmodel});
  final CategoryModel catmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: OutlinedButton(
        onPressed: () {},
        child: SizedBox(
          height: 30,
          child: Center(
            child: Text(
              catmodel.typ,
              style: const TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
