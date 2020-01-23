import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_five.dart';

class pageFour extends StatefulWidget {
  final Paciente patient;

  pageFour(this.patient);

  @override
  _pageFourState createState() => _pageFourState();
}

enum FirstQuestion { zero, one , two}
enum SecondQuestion { zero, one , two , tree }

class _pageFourState extends State<pageFour> {

  Paciente _editedPatient;
  
  int _radioValue1 = -1;
  bool comboBox1 = false;

  int _radioValue2 = -1;
  bool comboBox2 = false;

  FirstQuestion _character = FirstQuestion.zero;
  SecondQuestion _character2 = SecondQuestion.zero;

  @override
  void initState() {
    super.initState();
    _editedPatient = widget.patient;
  }
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pageFive(_editedPatient))
          );
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bloco 1 - Atividades Básicas"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 9,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  //color: Colors.blue,
                  decoration: new BoxDecoration(
                    color: Colors.blue, //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(40.0),
                      topRight: const  Radius.circular(40.0))
                  ),
                  child: Center(child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 75,
                      maxHeight: SizeConfig.blockSizeVertical * 9,), 
                      child: Text("7 - Suporte e cuidado aos familiares e pacientes", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)  
                    ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue[50],
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: FirstQuestion.one,
                        groupValue: _character,
                        onChanged: (FirstQuestion value) {
                          setState(() {
                            _character = value;
                            _radioValue1 = 1;
                            _editedPatient.choices[6] = 1;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Dedicação exclusiva por cerca de uma hora", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
                      ),
                    ],
                  ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue[50],
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: FirstQuestion.two,
                        groupValue: _character,
                        onChanged: (FirstQuestion value) {
                          setState(() {
                            _character = value;
                            _radioValue1 = 2;
                            _editedPatient.choices[6] = 2;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Dedicação exclusiva por cerca de 3 horas", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
                      ),
                    ],
                  ),
                ),

              ],
            )
          ),

          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 9,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue,
                  child: Center(child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 75,
                      maxHeight: SizeConfig.blockSizeVertical * 9,), 
                      child: Text("8 - Tarefas administrativas e gerenciais", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),) 
                    ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue[50],
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: SecondQuestion.one,
                        groupValue: _character2,
                        onChanged: (SecondQuestion value) {
                          setState(() {
                            _character2 = value;
                            _radioValue2 = 1;
                            _editedPatient.choices[7] = 1;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Tarefas de Rotina", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
                      ),
                    ],
                  ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue[50],
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: SecondQuestion.two,
                        groupValue: _character2,
                        onChanged: (SecondQuestion value) {
                          setState(() {
                            _character2 = value;
                            _radioValue2 = 2;
                            _editedPatient.choices[7] = 2;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Tarefas com dedicação integral por cerca de 2 horas", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
                      ),
                    ],
                  ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  decoration: new BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0)
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: SecondQuestion.tree,
                        groupValue: _character2,
                        onChanged: (SecondQuestion value) {
                          setState(() {
                            _character2 = value;
                            _radioValue2 = 3;
                            _editedPatient.choices[7] = 3;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Dedicação integral por cerca de 4 horas ou mais", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),

          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 10),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical * 2, SizeConfig.blockSizeVertical * 1, SizeConfig.blockSizeVertical * 2, SizeConfig.blockSizeVertical * 1),
                        decoration: new BoxDecoration(
                          color: Colors.blue,
                          borderRadius: new BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 2),
                      child: Text("Preenchimento obrigatório"),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 10,top:3),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical * 2, SizeConfig.blockSizeVertical * 1, SizeConfig.blockSizeVertical * 2, SizeConfig.blockSizeVertical * 1),
                        decoration: new BoxDecoration(
                          color: Colors.red[400],
                          borderRadius: new BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 2,top:3),
                      child: Text("Preenchimento opcional"),
                    )
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}