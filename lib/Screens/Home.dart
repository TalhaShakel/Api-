// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_18/Screens/user_info.dart';
import 'package:flutter_application_18/Service/services.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    userinfo(snapshot.data[index])));
                      },
                      child: Card(
                        child: ListTile(
                          leading: Text("${snapshot.data[index].Id}"),
                          title: Text("${snapshot.data[index].name}"),
                          
                        ),
                      ),
                    );
                  });
            }
          }),
    );
  }
}
