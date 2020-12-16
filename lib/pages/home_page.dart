import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:local_demo/pages/task_one.dart';
import 'package:local_demo/pages/task_two.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Flutter advance lesson two'
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.grey[800],
              textColor: Colors.white,
              child: Text('Task1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              onPressed: () {
                Navigator.pushNamed(context, TaskOne.id);
              },
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: Colors.grey[800],
              textColor: Colors.white,
              child: Text('Task2', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              onPressed: () {
                Navigator.pushNamed(context, TaskTwo.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
