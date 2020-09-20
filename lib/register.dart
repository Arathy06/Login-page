import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController pass =TextEditingController();
  TextEditingController cpass =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("Register Page")),
        ),
        body: SingleChildScrollView(
          child:
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height: 30.0,),

                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter name",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter email id",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter mobile number",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                TextField(
                  decoration: InputDecoration(
                      hintText: "Enter username",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                TextField(
                  controller: cpass,
                  decoration: InputDecoration(
                      hintText: "Enter conform password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )
                  ),
                ),

                SizedBox(height: 10.0,),

                GestureDetector(
                  onTap: (){
                    var p1=int.parse(pass.text);
                    var p2=int.parse(cpass.text);

                    if(p1==p2)
                    {
                      print("Successfully Registered");
                    }
                    else
                    {
                      print("Mismatch in password and conform password");
                    }
                  },
                  child: Container(
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blueAccent,
                    ),
                    child:
                    Center(child: Text("REGISTER")),
                  ),
                ),

                SizedBox(height: 15.0,),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
                  },
                  child: Container(
                    height: 30.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blueAccent,
                    ),
                    child:
                    Center(child: Text("BACK")),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
