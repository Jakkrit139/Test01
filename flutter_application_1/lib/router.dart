import 'package:flutter/material.dart';
import 'package:flutter_application_1/authen.dart';
import 'package:flutter_application_1/register.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
};
