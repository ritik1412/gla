// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gla/drawer/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/profile.jpg'),
                  radius: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Ritik Bhargava', style: GoogleFonts.acme()),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'B.Tech. -CS (AIML)',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
            child:
                Container(child: Image(image: AssetImage('images/profil.jpg'))),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
                child: Image(image: AssetImage('images/attendance.jpg'))),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child:
                Container(child: Image(image: AssetImage('images/result.jpg'))),
          ),
          GestureDetector(
            onTap: () {
              print("Tapped a Container");
            },
            child:
                Container(child: Image(image: AssetImage('images/profil.jpg'))),
          ),
        ]),
      ),
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Color.fromARGB(255, 23, 115, 52),
          ),
          backgroundColor: Color.fromARGB(255, 0, 102, 52),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GLA University',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Mathura',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SizedBox(
                child: IconButton(
                  icon: Icon(
                    Icons.repeat_rounded,
                    size: 20,
                  ),
                  onPressed: () => home(),
                ),
              ),
            ),
          ]),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
              Row(
                children: [Icon(Icons.car_crash), Text('BUS DETAILS')],
              ),
            ]),
          )
        ],
      ),
    ));
  }
}
