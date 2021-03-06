import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/EasyJsonParse/JsonParseDemo.dart';
import 'package:todo_app/layouts/home_layouts.dart';


class Home extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                    color: Colors.black,
                    size: 30.0,),
                  backgroundColor: Colors.white,
                  radius: 30.0,),
                SizedBox(height: 10.0,),
                Text(".Ktu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text('12 Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlatButton(
                    color: Colors.black,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context)=>HomeLayout()
                      ));
                    },
                    child: Text("plans.Ktu",
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),
                  Divider(height: 10.0,),
                  FlatButton(
                    color: Colors.black,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context)=>JsonParseDemo()
                      ));
                    },
                    child: Text("notifications.Ktu",
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}