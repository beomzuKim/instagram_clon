import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clon/tab_page.dart';
import 'login_page.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return TabPage(snapshot.data);
        /*if(snapshot.hasData){
          return TabPage(snapshot.data);//snapshot.data);
        }else{
          return LoginPage();
        }*/
      },
    );
  }
}

