import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/news_details_screen.dart.dart';
import 'package:flutter_application_1/screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // MyWidget(),
          // NewsDetailsScreen(),
          HomeScreen(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/form_screen.dart';
// import 'package:flutter_application_1/utils/icons/icons.dart';
// import 'package:flutter_application_1/utils/images/images.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//       builder: (context, child) => const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         home: HomeScreen(),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Positioned(
//               top: 0,
//               child: Image.asset(
//                 mainLogo,
//                 fit: BoxFit.fill,
//                 height: 250.h,
//                 width: 400.w,
//               ),
//             ),
//             const FormScreen(),
//           ],
//         ),
//       ),
//     );
//   }
// }
