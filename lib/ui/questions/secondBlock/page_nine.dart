import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/result.dart';

class pageNine extends StatefulWidget {
  final Paciente patient;

  pageNine(this.patient);

  @override
  _pageNineState createState() => _pageNineState();
}

enum FirstQuestion { zero, one , two}
enum SecondQuestion { zero, one , two}

class _pageNineState extends State<pageNine> {
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
            MaterialPageRoute(builder: (context) => result(_editedPatient))
          );
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bloco 4 - Monitorização Metabólica"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container(),
          ),
          Expanded(
            flex: 6,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 26,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  decoration: new BoxDecoration(
                    color: Colors.blue,
                    borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(40.0),
                      topRight: const  Radius.circular(40.0))
                  ),
                  child: Center(child: ConstrainedBox(
                    constraints: BoxConstraints(
                    maxWidth: SizeConfig.blockSizeHorizontal * 75,
                    maxHeight: SizeConfig.blockSizeVertical * 24,), 
                    child: Text("22 - Intervenções na UTI pela enfermagem ou com auxílio da enfermagem IOT, inserção de marcapasso, traqueostomia, cardioversão, endoscopia, lavagem gástrica, frenagem de tórax, etc.", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)
                  ), 
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue[50],
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: 
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
                          child: 
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: FirstQuestion.one,
                                  groupValue: _character,
                                  onChanged: (FirstQuestion value) {
                                    setState(() {
                                      _character = value;
                                      _radioValue1 = 1;
                                      _editedPatient.choices[21] = 1;
                                    });
                                  },
                                ),
                                Text("Sim", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),
                            ],
                          ),
                        )
                      ),
                      Expanded(
                        child: 
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
                          child: 
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: FirstQuestion.two,
                                  groupValue: _character,
                                  onChanged: (FirstQuestion value) {
                                    setState(() {
                                      _character = value;
                                      _radioValue1 = 2;
                                      _editedPatient.choices[21] = 2;
                                    });
                                  },
                                ),
                                Text("Não", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),
                            ],
                          ),
                        )
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
                  height: SizeConfig.blockSizeVertical * 12,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue,
                  child: Center(child: ConstrainedBox(
                    constraints: BoxConstraints(
                    maxWidth: SizeConfig.blockSizeHorizontal * 75,
                    maxHeight: SizeConfig.blockSizeVertical * 10,), 
                    child: Text("23 - Intervenções fora da UTI Procedimentos Diagnósticos ou cirúrgicos", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)
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
                    )
                  ),
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: 
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 15),
                          child: 
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: SecondQuestion.one,
                                  groupValue: _character2,
                                  onChanged: (SecondQuestion value) {
                                    setState(() {
                                      _character2 = value;
                                      _radioValue2 = 1;
                                      _editedPatient.choices[22] = 1;
                                    });
                                  },
                                ),
                                Text("Sim", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),
                            ],
                          ),
                        )
                      ),
                      Expanded(
                        child: 
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
                          child: 
                          Row(
                            children: <Widget>[
                              Radio(
                                  value: SecondQuestion.two,
                                  groupValue: _character2,
                                  onChanged: (SecondQuestion value) {
                                    setState(() {
                                      _character2 = value;
                                      _radioValue2 = 2;
                                      _editedPatient.choices[22] = 2;
                                    });
                                  },
                                ),
                                Text("Não", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),
                            ],
                          ),
                        )
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
              ],
            )
          )
        ],
      ),
    );
  }
}