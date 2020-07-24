import 'package:flutter/material.dart';

class MailList extends StatefulWidget {
  MailList({Key key}) : super(key: key);

  @override
  _MailListState createState() => _MailListState();
}

class _MailListState extends State<MailList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("mail list"),
    );
  }
}
