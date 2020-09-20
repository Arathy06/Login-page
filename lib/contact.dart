import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 40.0,),

          TextField(
            decoration: InputDecoration(
              hintText: "Enter name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
              )
            ),
          ),
          SizedBox(height: 20.0,),


          TextField(
            decoration: InputDecoration(
                hintText: "Enter mobile number",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                )
            ),
          ),
          SizedBox(height: 20.0,),

          TextField(
            decoration: InputDecoration(
                hintText: "Enter message",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)
                )
            ),
          ),
          SizedBox(height: 20.0,),

          RaisedButton(onPressed: (){},
            color: Colors.cyan,
              child: Center(child: Text("SUBMIT")),

          )

        ],
      ),
    );
  }
}
