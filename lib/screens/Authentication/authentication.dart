import 'package:flutter/material.dart';
import 'package:flutter_email_authentication/screens/Authentication/register.dart';

import 'login.dart';

class Authentication extends StatefulWidget {
  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {

  bool isToggle = true;

  void toggleScreen(){
    setState(() {
      isToggle = !isToggle;
    });
  }


  @override
  Widget build(BuildContext context) {
    if(isToggle){
      return Register(toggleScreen: toggleScreen,);
    }
    else{
      return Login(toggleScreen: toggleScreen);
    }
  }
}
