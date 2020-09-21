import 'package:flutter/material.dart';
import 'package:flutter_login/display.dart';
import 'package:flutter_login/register.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController us=TextEditingController();
  TextEditingController pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  
      SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.only(left: 10.0,right: 10.0,bottom: 100.0),
        decoration: BoxDecoration(
          color: Colors.redAccent
        ),
        child: Column(
          children: [
            SizedBox(height: 200.0,),

         SafeArea(
           child: Container(
             height: MediaQuery.of(context).size.height-300,
                decoration: BoxDecoration(
                 color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
              ),
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(height: 50.0,),

                       TextField(
                       controller: us,
                             decoration: InputDecoration(
                          hintText: "Enter username:",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15.0)
                     ),
                   ),
                   ),

    SizedBox(height: 30.0,),

    TextField(
        controller: pass,
        decoration: InputDecoration(
              hintText: "Enter password",
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0)
              )
        ),
    ),

    SizedBox(height: 30.0,),


    RaisedButton(
        color: Colors.blue,
           onPressed: (){
            var name=us.text;
            var passw=pass.text;

            if(name == "admin" && passw == "12345")
            {
              print("Login Successfully");
              Navigator.push(
                context,
                 MaterialPageRoute(builder: (context)=>Display()),

             );

            }
            else
              {
                print("Invalid username or password");
              }
        },
        child: Text("LOGIN",style: TextStyle(color: Colors.black),),),

    SizedBox(height: 15.0,),


    RaisedButton(
        color: Colors.cyan,
        onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));


        },
        child: Text("REGISTER",style: TextStyle(color: Colors.black),),),
                ],
              ),



            ),
         ),
        ],
    ),
    ),
      );

  }
}


