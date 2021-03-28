import 'package:flutter/material.dart';
import 'package:yalla_agaza/views/register/registerImports.dart';
import 'package:yalla_agaza/views/login/LoginImports.dart';

class AskedView extends StatelessWidget {
  static final route = '/askedView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.2),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Image.asset(
                'assets/photos/Island.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: FlatButton(
              height: MediaQuery.of(context).size.height * 0.07,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) => Register()));
              },
              child: Text(
                'Create an account',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              color: Color(0xFF19A3FF),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already on trip?',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Login()));
                  },
                  child: Text(
                    ' Log in',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.1),
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .4,
              child: Image.asset('assets/photos/logo.png')),
        ],
      ),
    );
  }
}
