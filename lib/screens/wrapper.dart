import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_authentication/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

import 'Authentication/login.dart';


 class Wrapper extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     final user = Provider.of<User>(context);
     if(user != null) {
       return HomeScreen();
     }
     else{
       return Login();
     }

   }
 }
