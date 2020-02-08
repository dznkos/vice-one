import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Vice One"),
        actions: <Widget>[
          InkWell(
            onTap: (){
              print("Tap Click");
            },
            child: Icon(Icons.adb),
            
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Float Presionado");
        },
        child: Icon(Icons.local_airport),

      ), 
      body: Center(
        child: Text(
          "Vista Principal",
          style: TextStyle(
            fontSize: 28,
            color: Colors.black26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
