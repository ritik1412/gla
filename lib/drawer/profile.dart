// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color.fromARGB(255, 0, 102, 52),
      ),
      body: Scrollbar(
        child: ListView(children: [
          Image.asset('images/profile01.jpg'),
          Image.asset('images/profile1.jpg')
        ]),
      ),
    ));
  }
}
