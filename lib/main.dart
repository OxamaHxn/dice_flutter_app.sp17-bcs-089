import 'package:dicee/page1.dart';
import 'package:dicee/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'splash_Screen.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.pinkAccent,
          appBar: AppBar(
            title: Text('Dice Game'),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.teal.shade900,
                    Colors.lightBlue
                  ]
                ),
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: SafeArea(
                    child: Text('About Us',style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400
                    ),),
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                ),
              ],
            ),
          ),
          body: DicePage(),
        ),
      ),
    );
  }
}
