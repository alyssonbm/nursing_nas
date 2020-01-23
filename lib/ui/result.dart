import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';

class result extends StatefulWidget {
  final Paciente patient;

  result(this.patient);

  @override
  _resultState createState() => _resultState();
}

class _resultState extends State<result> {

  Paciente _editedPatient;

  @override
  void initState() {
    super.initState();
    _editedPatient = widget.patient;
    _editedPatient.lastNas = _editedPatient.nasResult();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.save),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                height: SizeConfig.blockSizeVertical * 40,
                width: SizeConfig.blockSizeHorizontal * 80,
                decoration: new BoxDecoration(
                  color: Colors.blue,
                  borderRadius: new BorderRadius.circular(SizeConfig.blockSizeHorizontal * 60)
                ),
              ),
            ),
            
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 15),
                child: ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text(_editedPatient.getName(), textAlign: TextAlign.center ,style: new TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 10),),  
                      ),
                
              )
            ),
            Center(
              child: 
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 10),
                child: Text("Nas: "+ _editedPatient.getLastNas().toStringAsFixed(2), style: new TextStyle(color: Colors.white, fontSize: SizeConfig.blockSizeHorizontal * 8),),
              )
            )
          ],
        ),
      ),
    );
  }
}