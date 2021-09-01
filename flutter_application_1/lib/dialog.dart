import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_stye.dart';

Future<Null> normlDialog(
  BuildContext context, String title, String message) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: ListTile(
        leading: MyStyle().showLogo(),
        title: Text(
          title,
          style: MyStyle().darStyle(),
        ),subtitle: Text(message),
        ),children: [
          TextButton(
            onPressed: ()=> Navigator.pop(context),
             child:Text('OK'),),],
      ),
    );
  }

