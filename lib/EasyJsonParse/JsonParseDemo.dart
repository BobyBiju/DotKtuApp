import 'package:flutter/material.dart';

import 'Notifications.dart';
import 'Services.dart';

class JsonParseDemo extends StatefulWidget {

  @override
  _JsonParseDemoState createState() => _JsonParseDemoState();
}

class _JsonParseDemoState extends State<JsonParseDemo> {
  late Future<Notifications> _notifications;

  @override
  void initState() {
    _notifications=Services().getNotifications();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("notifications.Ktu",
          style: TextStyle(
              fontWeight: FontWeight.w400
          ),),
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))
        ),
        child: FutureBuilder<Notifications>(
          future: _notifications,
          builder: (context,snapshot){
            if(snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.notifications.length,
                  itemBuilder: (context, index) {
                    var notification= snapshot.data!.notifications[index];
                    return ListTile(

                      title: Text(notification.title),
                      subtitle: Text(notification.description),

                    );
                  });
            }else{return Center(child: CircularProgressIndicator());}
          },

        ),


      ),
    );
  }
}