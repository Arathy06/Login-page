import 'package:flutter/material.dart';
import 'package:flutter_login/contact.dart';
import 'package:flutter_login/view.dart';
class Display extends StatefulWidget {
  @override
  _DisplayState createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  var pages=[View(),Contact()];
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: 
          Center(child: Text("Display Page")),
        ),
        body: pages[_index],

          bottomNavigationBar: BottomNavigationBar(
            onTap: (index){

              setState(() {
                _index=index;
              });
            },
            currentIndex: _index,
             backgroundColor: Colors.orangeAccent,
              iconSize: 20.0,
              items:[
                BottomNavigationBarItem(
                    icon:Icon(Icons.notifications_active),
                    title: Text("View Notifications")
                ),

                BottomNavigationBarItem(
                    icon:Icon(Icons.contacts),
                    title: Text("Contact"),
                )
              ] ),
      ),
    );
  }
}
