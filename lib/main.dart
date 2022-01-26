import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              RaisedButton(
                onPressed: (){},
                child: Text('R.Button'),
                color: Colors.green,
                textColor: Colors.black,
              ),
              OutlineButton(
                onPressed: (){},
                child: Text('OutlinedButton'),
                color: Colors.red,
                textColor: Colors.black,
              ),
              FlatButton(
                onPressed: (){},
                child: Text('FlatButton'),
                color: Colors.amber,
                textColor: Colors.black,
              ),

            ],
          ),
          Switch(
            onChanged: (IsEnable){},
            value: true,
            activeColor: Colors.red,
          ),
          Slider(
            onChanged: (value){},
            value: 28,
            min: 1,
            max: 100,
          ),
          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_960_720.jpg'),
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'type your name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: 'type your address',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'email',
                hintText: 'type your email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'type tour password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'confirm password',
                hintText: 'type your confirm password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.home_filled),
      ),
    );
  }
}


