import 'package:flutter/material.dart';

class Notixscreens extends StatefulWidget {
  @override
  _NotixscreensState createState() => _NotixscreensState();
}

class _NotixscreensState extends State<Notixscreens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,), onPressed: (){}),
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: true,
          title: Text("Notifikasi", style: TextStyle(
            fontFamily: 'Roboto Medium',
            color: Colors.black
          ),),
        ),
        body: new ListView(
          children: <Widget>[
            Padding(
              padding:EdgeInsets.only(left:24.0, top:24.0, right: 24.0),
              child: new Card(
                elevation: 20.0,
                child: new ListTile(
                  title: message("Buruan ngumpul bareng Lombok{Dev} Mataram"),
                  trailing: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.red,
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget message(String mess){
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 12, 58, 12),
      child: Text(
          mess,
          style: TextStyle(
              color: Colors.blue,
              fontFamily: 'Roboto Medium',
              fontSize: 14.0,
          ),
      ),
    );
  }
}
