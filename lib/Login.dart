import 'package:flutter/material.dart';
import 'dart:async';
import 'package:komunitas/screen/home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<String> people = [
    "lib/assets/humaaan-1.png",
    "lib/assets/humaaan-2.png",
    "lib/assets/humaaan-8.png",
    "lib/assets/humaaan-9.png",
    "lib/assets/Human 1.png",
    "lib/assets/Human 2.png",
  ];
  int currentindex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setImage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Center(
                child: Text(
                  "Komunitas",
//                textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 40.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: Text(
                  "Best way to sharing and improving skills",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 18.0),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20.0),
                child: Container(
                  width: 250.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(people[currentindex]),
                          fit: BoxFit.fitHeight)),
                ),
              ),
            ),
            new ListTile(
              title: RaisedButton(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.all(10),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homescreen()));
                },
              ),
            ),
            // SizedBox(height: 5.0),
            new ListTile(
              title: RaisedButton(
                child: Text(
                  'Dude! I Already Have an Account',
                  style: TextStyle(
                    fontFamily: 'Roboto Medium',
                    color: Colors.black,
                  ),
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<Timer> setImage() async {
    return Timer.periodic(Duration(milliseconds: 200), (Timer t) {
      setState(() {
        if (currentindex + 1 < people.length) {
          currentindex++;
        } else {
          currentindex = 0;
        }
      });
      print(currentindex);
    });
  }
}
