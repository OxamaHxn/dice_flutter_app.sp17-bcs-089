import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("About us"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  child: const Text.rich(
                    TextSpan(
                      text: '', // default text style
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Supported by ',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'BZ Financial',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  child: const Text.rich(
                TextSpan(
                  text: '', // default text style
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Developed by ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Jeet Viramgama',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
