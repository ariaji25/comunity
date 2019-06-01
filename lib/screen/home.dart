import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:komunitas/screen/notifications.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: appbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 10),
                child: search(),
              ),
              SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 16),
                child: category("Events In Mataram"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: new SizedBox(
                  height: 113.0,
//                  width: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, int index){
                      return event();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:308, top:14.0,),
                child: Text(
                  'More Events',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 10, 16),
                child: category("Spots In Mataram"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: new SizedBox(
                  height: 130.0,
//                  width: 500,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, int index){
                      return spots();
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:308, top:14.0,),
                child: Text(
                  'More Spots',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 10, 16),
                child: category("Comunity News"),
              ),
              Padding(
                padding: const EdgeInsets.only(left:24.0),
                child: new SizedBox(
                  height: 500.0,
                  width: 500.0,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (context, int index){
                      return news();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget category(String name) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Roboto',
          color: Colors.blue),
    );
  }

  Widget appbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Text("Comunity",
          style: TextStyle(
              // fontWeight: ,
              color: Colors.black,
//              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto Medium')),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Notixscreens()));
            }),
        SizedBox(
          width: 14.0,
        ),
        CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.person,
            size: 10.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget search() {
    return TextFormField(
      style: TextStyle(
        fontSize: 12.0
      ),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          hintText: 'Search comunity arround you!',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.black),
          ),
          prefixIcon: Icon(Icons.search, size: 20.0,)),
    );
  }

  Widget event() {
    return Padding(
      padding: const EdgeInsets.only(right:18.0),
      child: Container(
        width: 252.0,
        height: 113.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: NetworkImage(
                    "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/tnc_36722630_Full.jpg?crop=0,0,6549,4912&wid=580&hei=435&scl=11.291954022988506"),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(13,25,10,10),
          child: RichText(
            text: TextSpan(
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
                text: 'Lombok Dev \n',
                children: [
                  TextSpan(text: 'Meet_Up #7 \n'),
                  TextSpan(
                      text: 'Meet Up With Lombok{Dev}',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.normal))
                ]),
          ),
        ),
      ),
    );
  }

  Widget spots(){
    return Padding(
      padding: const EdgeInsets.only(right:24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          width: 72.0,
          height: 72.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/tnc_36722630_Full.jpg?crop=0,0,6549,4912&wid=580&hei=435&scl=11.291954022988506"),
                  fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: RichText(
              text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold),
                  text: 'Coffe Tofee \n',
                  children: [
                    TextSpan(text: 'Matarm\n'),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget news(){
    return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new ListTile(
          leading: Container(
            height: 54.0,
            width: 54.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/tnc_36722630_Full.jpg?crop=0,0,6549,4912&wid=580&hei=435&scl=11.291954022988506"),
                    fit: BoxFit.cover)),
          ),
          title: Text("Hackathon Flutter International 2019\nSalah Satu Tempatnya di Lombok!"),
          subtitle: Text("Sabtu 1 Juni 2019"),
        ),
        Divider(height: 14.0,)
      ],
    );
  }
}
