import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';

class newPatient extends StatefulWidget {

  final Paciente patient;

  newPatient({this.patient});

  @override
  _newPatientState createState() => _newPatientState();
}

class _newPatientState extends State<newPatient> {

  bool _userEdited = false;

  Paciente _editedPatient;

  @override
  void initState(){
    this.initState();

    if(widget.patient == null){
      _editedPatient = new Paciente();
    } else {
      _editedPatient = widget.patient;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_editedPatient.name ?? "Novo Paciente"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
        child: Icon(Icons.save),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 140.0,
                height: 140.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // TODO: IMAGEM DO FIREBASE
                  image: DecorationImage(
                    image: _editedPatient.img != null ?
                    AssetImage('images.png') : 
                    AssetImage('images.png')
                  )
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
              onChanged: (text){
                _userEdited = true;
                setState(() {
                  _editedPatient.name = text;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}