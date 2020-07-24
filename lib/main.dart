import 'package:behavior_test/mail_list.dart';
import 'package:behavior_test/mail_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MailStore(),
        )
      ],
      child: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Behavior Test"),
        ),
        body: Center(
          child: MailList(),
        ),
      ),
    );
  }
}
