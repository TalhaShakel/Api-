// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_application_18/Models/models.dart';

import 'package:http/http.dart' as http;
  String url = "http://www.bcsportal.com.pk/test/service.php";

getUser() async{
  var response = await http.get(Uri.parse(url));
  var resbody = json.decode(response.body);
  List <userModel> userlist= [];
  for(var i in resbody){
    userModel users = userModel(Id: i["Id"], image:i ["image"], name: i["name"]);
    userlist.add(users);
  }
  return userlist;
  
}