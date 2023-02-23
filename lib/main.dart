import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          Icon(Icons.doorbell, color: Colors.black54),
          Icon(Icons.doorbell, color: Colors.black54),
          Icon(Icons.doorbell, color: Colors.black54)],
        backgroundColor: Colors.white,),
        body: Container(
          height: 200,
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Image.asset('assets/dog.png', width: 150,),
              Container(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('te', style: TextStyle(fontSize: 30),),
                    Text('te'),
                    Text('st'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: () {
                          showDialog(context: context, builder: (context) {
                            return AlertDialog(
                              title: Text('testalert'),
                              content: Text("content"),
                              actions: [
                                TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('close'))
                              ],
                            );
                          });
                          }, icon: Icon(Icons.favorite)),
                        Text('5'),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          ),
    ));
  }
}