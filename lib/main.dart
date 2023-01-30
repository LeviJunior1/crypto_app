import 'package:crypto_app/routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: route,
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/login') {
      //     return PageRouteBuilder(
      //       settings: settings,
      //       pageBuilder: (context, animation, secondaryAnimation) =>
      //           LoginPage(),
      //       transitionsBuilder:
      //           (context, animation, secondaryAnimation, child) =>
      //               FadeTransition(
      //         opacity: animation,
      //         child: child,
      //       ),
      //     );
      //   }

      //   return MaterialPageRoute(builder: (context) => const MyApp());
      // },
    );
  }
}
