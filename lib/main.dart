import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'routers/Router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yalla Agaza',
      builder: ExtendedNavigator.builder<AppRouter>(
        router: AppRouter(),
        initialRoute: Routes.splashView,
        navigatorKey: navKey
      ),
    );
  }
}
