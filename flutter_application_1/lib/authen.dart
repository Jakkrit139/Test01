import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_stye.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  late double height, width;
  bool redEye = true;

  get screenHeigh => null;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
          ),
          Text(
            'Non Account ?',
            style: MyStyle().whitStyle(),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/createAccount'),
            child: Text(
              'Create Acciunt',
              style: MyStyle().pinkStyle(),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            MyStyle().buildBackground(width, height),
            Positioned(top: 40, left: 16, child: buildLogo()),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildUser(),
                  buildPassword(),
                  buildLogin(),
                  buildSigninGoogle(),
                  buildSigninFacebook(),
                  SizedBox(
                    height: height * 0.01,
                  )
                ],
              ),
            ),
          ],
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

  Container buildSigninGoogle() => Container(
        margin: EdgeInsets.only(top: 16),
        child: SignInButton(
          Buttons.GoogleDark,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

  Container buildSigninFacebook() => Container(
        margin: EdgeInsets.only(top: 16),
        child: SignInButton(
          Buttons.Facebook,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      );

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

  Container buildLogo() {
    return Container(
      width: width * 0.3,
      child: MyStyle().showLogo(), //ใส่โล้โก้
    );
  }
}
