import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yalla_agaza/res.dart';
import 'package:yalla_agaza/routers/Router.gr.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        // Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder: (BuildContext context) => AskedView()));
        ExtendedNavigator.root.push(Routes.askedView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF19A3FF),
      body: Container(
        margin: EdgeInsets.only(right: 40, left: 40),
        child: Center(
          child: Image.asset(Res.logo),
        ),
      ),
    );
  }
}
