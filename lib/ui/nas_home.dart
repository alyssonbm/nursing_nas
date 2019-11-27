import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'dart:io';
import 'package:nunsing_nas/services/authentication.dart';

class NasHome extends StatefulWidget {
  NasHome({Key key, this.auth, this.userId, this.logoutCallback}): super(key: key);

  final BaseAuth auth;
  final VoidCallback logoutCallback;
  final String userId;

  @override
  _NasHomeState createState() => _NasHomeState();
}

class _NasHomeState extends State<NasHome> {

  List<Paciente> patients = List();

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("NAS"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new FlatButton(
            child: new Text('Sair', style: new TextStyle(fontSize: 17.0, color: Colors.white),),
            onPressed: signOut,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: patients.length,
        itemBuilder: (context, index){
          return _pacientCard(context, index);
        },
      ),
    );
  }


  Widget _pacientCard(BuildContext context, int index){
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: patients[index].img !=null ? 
                    FileImage(File(patients[index].img)) :
                    AssetImage("images/person.png")
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(patients[index].name ?? "",
                      style: TextStyle(fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }

}