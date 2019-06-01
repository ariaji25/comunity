import 'package:flutter/material.dart';
import 'dart:async';
import 'package:komunitas/Login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                  "Komunitas",
//                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontSize: 50.0
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<Timer> goLogin() async{
    return new Timer(Duration(seconds: 3,),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
}
