import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:local_demo/pages/home_page.dart';
import 'package:local_demo/pages/task_one.dart';
import 'package:local_demo/pages/task_two.dart';

void main() => runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [Locale('en', 'US'), Locale('uz', 'UZ'), Locale('ru', 'RU'), Locale('fr', 'FR'), Locale('ko', "KO"), Locale('ja', 'JA')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
    ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        TaskOne.id: (context) => TaskOne(),
        TaskTwo.id: (context) => TaskTwo()
      },
    );
  }
}
