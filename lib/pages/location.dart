import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  


  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {



  @override

  Widget build(BuildContext context) {
    print('helo wrld');
    return Scaffold (
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        elevation: 0,
      ),


    );
  }
}
