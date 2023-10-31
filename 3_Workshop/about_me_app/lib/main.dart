import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Center(
            child: Text('About Me'),
          )
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('YUSUFCAN ADIGÜZEL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold
                    ),),
                ),
                Container(
                  child: Text('Tobeto - Mobil Geliştirici - 1A', style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold
                  )),
                ),
                Container(
                  child: Text('31.10.23',
                  style: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
