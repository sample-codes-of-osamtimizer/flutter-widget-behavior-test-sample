import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:behavior_test/mail_detail.dart';
import 'package:behavior_test/mail_store.dart';
import 'package:behavior_test/main.dart';

void main() {
  setUpAll(() {});
  testWidgets("initialization", (WidgetTester tester) async {
    final store = MailStore();
    expect(store.mails.length, 0);
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: store,
        child: Home(),
      ),
    );
    expect(store.mails.length, 20);
    await tester.pump();

    final widgets = find.byType(ListTile);
    await tester.tap(widgets.first);

    // call tester.pumpAndSettle() to wait until the modal animation finished.
    await tester.pumpAndSettle();

    expect(find.byType(MailDetail), findsOneWidget);
    expect(find.text(store.mails[0].title), findsOneWidget);
    expect(find.text(store.mails[1].title), findsNothing);
  });
}
