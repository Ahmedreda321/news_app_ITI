import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/home_screen_widgets/notification_icon.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 16.0),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              labelText: 'Dogecoin to the Moon...',
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(width: 16.0),
        NotificationIcon(),
      ],
    );
  }
}
