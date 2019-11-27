import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/services/authentication.dart';
import 'package:nunsing_nas/ui/nas_home.dart';
import 'package:nunsing_nas/ui/nas_login.dart';

enum AuthStatus {
  NOT_DETERMINED,
  NOT_LOGGED_IN,
  LOGGED_IN,
}

class NasRoot extends StatefulWidget {
  NasRoot({this.auth});

  final BaseAuth auth;

  @override
  _NasRootState createState() => _NasRootState();
}

class _NasRootState extends State<NasRoot> {

  List<Paciente> patients = List();
  String _userId = "";
  AuthStatus authStatus = AuthStatus.NOT_DETERMINED;

  @override
  void initState(){
    super.initState();
    widget.auth.getCurrentUser().then((user){
      setState(() {
        if(user != null) {
          _userId = user?.uid;
        }
        authStatus = user?.uid == null ? AuthStatus.NOT_LOGGED_IN : AuthStatus.LOGGED_IN;
      });
    });
  } 

  @override
  Widget build(BuildContext context) {
    switch(authStatus) {
      case AuthStatus.NOT_DETERMINED:
        return buildWaitingScreen();
        break;
      case AuthStatus.NOT_LOGGED_IN:
        return new NasLogin(
          auth: widget.auth,
          loginCallback: loginCallback,
        );
        break;
      case AuthStatus.LOGGED_IN:
        if (_userId.length > 0 && _userId != null){
          return NasHome(
            userId: _userId,
            auth: widget.auth,
            logoutCallback: logoutCallback,
          );
        } else
          return buildWaitingScreen();
        break;
      default:
        return buildWaitingScreen();
    }
  }

  Widget buildWaitingScreen() {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }

  void loginCallback(){
    widget.auth.getCurrentUser().then((user){
      setState(() {
        _userId = user.uid.toString();
      });
    });
    setState(() {
      authStatus = AuthStatus.LOGGED_IN;
    });
  }

  void logoutCallback(){
    setState(() {
      authStatus = AuthStatus.NOT_LOGGED_IN;
      _userId = "";
    });
  }

}