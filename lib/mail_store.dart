import 'package:flutter/material.dart';

import 'mail.dart';
import 'package:provider/provider.dart';

class MailStore extends ChangeNotifier {
  List<Mail> _mails;
  List<Mail> get mails => _mails;

  Future<void> fetchMails() {
    // TODO: set mails to _mails
    notifyListeners();
  }
}
