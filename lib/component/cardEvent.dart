import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (contex, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/tnc_36722630_Full.jpg?crop=0,0,6549,4912&wid=580&hei=435&scl=11.291954022988506"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 40),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                    text: 'Lombok Dev \n',
                    children: [
                      TextSpan(text: 'Meet_Up #7 \n'),
                      TextSpan(
                          text: 'Meet Up With Lombok{Dev}',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal))
                    ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
