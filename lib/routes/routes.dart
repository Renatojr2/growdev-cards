import 'package:flutter/material.dart';
import 'package:growdevcards/pages/create_account.dart';
import 'package:growdevcards/pages/create_card.dart';
import 'package:growdevcards/pages/list_card.dart';
import '../pages/login.dart';

Map<String, Widget Function(BuildContext)> routes() {
  return {
    '/': (context) => LoginPage(),
    '/createAccount': (context) => CreateAccount(),
    '/listCard': (context) => ListCard(),
    '/createCard': (context) => CreateCards(),
  };
}
