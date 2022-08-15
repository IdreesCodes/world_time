import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
  //   Response response = await get('http://worldtimeapi.org/api/timezone/Europe/London');
  //   Map data =jsonDecode(response.body);

    var response = await http.get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    var data = jsonDecode(response.body) as Map;

    String datetime =data['datetime'];
    String offset = data['utc_offset'];
    print(datetime);
    print(offset);

    //var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    //var data = jsonDecode(response.body) as Map;
    //print(data);

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getTime();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
