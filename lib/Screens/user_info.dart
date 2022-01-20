import 'package:flutter/material.dart';
import 'package:flutter_application_18/Models/models.dart';
import 'package:flutter_application_18/Service/services.dart';

class userinfo extends StatelessWidget {
  // String? name;
   userModel data;
  userinfo(this.data);

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data.name,style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold
            ),),
            Container(
              height: 200,
              child: Image.network(data.image)),
          ],
        ),
      )
    );
  }
}
