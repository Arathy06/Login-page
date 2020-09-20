import 'package:flutter/material.dart';

class View extends StatelessWidget {
  var not=["check your mail","submit projects","no class tomarrow","exam date announced"];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.greenAccent,Colors.redAccent])
      ),
      child: ListView.builder(
          itemCount: not.length,
          itemBuilder: (context,index){
            return Card(
              elevation: 10.0,
              child: ListTile(
                leading: Icon(Icons.notifications_active,color: Colors.deepOrangeAccent,),
                trailing: Icon(Icons.arrow_downward,color: Colors.grey,),
                title: Text(not[index],style: TextStyle(color: Colors.green,fontSize: 20.0),),
              ),
            );
          }),
    );
  }
}
