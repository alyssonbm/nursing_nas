import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_one.dart';

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
    super.initState();

    if(widget.patient == null){
      _editedPatient = new Paciente();
    } else {
      _editedPatient = widget.patient;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_editedPatient.name ?? "Novo Paciente"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageOne(_editedPatient))
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.arrow_forward),
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
                    AssetImage('images/person.png') : 
                    AssetImage('images/person.png')
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nome',
                ),
                onChanged: (text){
                  _userEdited = true;
                  setState(() {
                    _editedPatient.name = text;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}