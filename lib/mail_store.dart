import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'mail.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class MailStore extends ChangeNotifier {
  List<Mail> _mails = [];
  List<Mail> get mails => _mails;

  Future<void> fetchMails() async {
    _mails = List.generate(20, (index) {
      return Mail(
          title: lipsum.createWord(numWords: 4),
          from: faker.internet.email(),
          to: faker.internet.email(),
          body: lipsum.createParagraph());
    });
    notifyListeners();
  }

  Future<void> clearMail() async {
    _mails.removeWhere((element) => true);
    notifyListeners();
  }
}
