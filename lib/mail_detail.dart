import 'package:behavior_test/mail.dart';
import 'package:flutter/material.dart';

class MailDetail extends StatelessWidget {
  static const routeName = '/mail/detail';
  const MailDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Mail mail = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(mail.title),
      ),
      body: Column(
        children: <Widget>[
          Text("from: ${mail.from}"),
          Text("to: ${mail.to}"),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(mail.body),
          )
        ],
      ),
    );
  }
}
