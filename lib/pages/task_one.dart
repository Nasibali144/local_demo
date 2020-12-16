import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TaskOne extends StatefulWidget {

  static final String id = 'task_one';

  @override
  _TaskOneState createState() => _TaskOneState();
}

class _TaskOneState extends State<TaskOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('welcome', style: TextStyle(fontSize: 20),).tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    textColor: Colors.white,
                    child: Text('English'),
                    onPressed: () {
                      context.locale = Locale('en', 'US');
                    },
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Uzbek'),
                    onPressed: () {
                      context.locale = Locale('uz', 'UZ');
                    },
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Russian'),
                    onPressed: () {
                      context.locale = Locale('ru', 'RU');
                    },
                  ),
                ),
                SizedBox(width: 8,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.orange,
                    textColor: Colors.white,
                    child: Text('French'),
                    onPressed: () {
                      context.locale = Locale('fr', 'FR');
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
