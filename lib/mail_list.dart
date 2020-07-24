import 'package:behavior_test/mail_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MailList extends StatefulWidget {
  MailList({Key key}) : super(key: key);

  @override
  _MailListState createState() => _MailListState();
}

class _MailListState extends State<MailList> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      context.read<MailStore>().fetchMails();
    });
  }

  @override
  Widget build(BuildContext context) {
    final mails = context.watch<MailStore>().mails;
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(mails[index].title),
            subtitle: Text(mails[index].from),
          );
        },
        itemCount: mails.length,
      ),
    );
  }
}
