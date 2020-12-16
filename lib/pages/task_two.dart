import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class TaskTwo extends StatefulWidget {

  static final String id = 'task_two';

  @override
  _TaskTwoState createState() => _TaskTwoState();
}

class _TaskTwoState extends State<TaskTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text('text', style: TextStyle(fontSize: 20),).tr(),
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
                SizedBox(width: 10,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Korean'),
                    onPressed: () {
                      context.locale = Locale('ko', 'KO');
                    },
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Japanese'),
                    onPressed: () {
                      context.locale = Locale('ja', 'JA');
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
