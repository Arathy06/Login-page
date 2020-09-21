import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
          home:Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.redAccent,
              title: Center(child: Text("Login Page")),
              leading: Icon(Icons.menu),
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: (){})
              ],
            ),
            body: Login(),
          ),
    );
  }
}

