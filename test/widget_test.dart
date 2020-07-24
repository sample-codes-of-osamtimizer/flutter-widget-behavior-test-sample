import 'package:behavior_test/mail_list.dart';
import 'package:behavior_test/mail_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:behavior_test/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets("fetch mails after MailList widget initialization",
      (WidgetTester tester) async {
    final store = MailStore();
    expect(store.mails.length, 0);
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: store,
        child: Home(),
      ),
    );
    expect(store.mails.length, 20);
  });
}
