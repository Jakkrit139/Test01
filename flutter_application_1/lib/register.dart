import 'package:flutter/material.dart';

import 'my_stye.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccount createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  late double height, width,screenWidth;
  bool redEye = true;

  Container buildName() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: width * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyStyle().dakColor,
          ),
          labelStyle: MyStyle().darStyle(),
          labelText: 'Name:',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyStyle().dakColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: width * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyStyle().dakColor,
          ),
          labelStyle: MyStyle().darStyle(),
          labelText: 'User:',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyStyle().dakColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }


   Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: width * 0.6,
      child: TextField(obscureText: redEye,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              icon: Icon(
                redEye ? Icons.remove_red_eye_outlined : Icons.remove_red_eye_sharp,
                color: MyStyle().dakColor,
              ),
              onPressed: () {
                setState(() {
                  redEye = !redEye;
                });
              }),
          prefixIcon: Icon(
            Icons.lock_outlined,
            color: MyStyle().dakColor,
          ),
          labelStyle: MyStyle().darStyle(),
          labelText: 'Password:',
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: MyStyle().dakColor)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: MyStyle().lightColor)),
        ),
      ),
    );
  }

   Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: width * 0.6,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Login'),
        style: ElevatedButton.styleFrom(
            primary: MyStyle().dakColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('New Register'),
        backgroundColor: MyStyle().primaryColor,
      ),
      body: Center(
        child: Column(
          children: [
          buildName(),
          buildUser(),
          buildPassword(),
          buildLogin(),
          ],
        ),
      ),
    );
  }
}
