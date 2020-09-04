import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:instagram_clon/tab_page.dart';
import 'login_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return StreamBuilder<FirebaseUser>(
      builder: (BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData){
          return TabPage(snapshot.data);
        }else{
          return LoginPage();
        }
      },
    );
  }
}

