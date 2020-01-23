import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_six.dart';

class pageFive extends StatefulWidget {
  final Paciente patient;

  pageFive(this.patient);

  @override
  _pageFiveState createState() => _pageFiveState();
}

enum FirstQuestion { zero, one , two}
enum SecondQuestion { zero, one , two}
enum ThirdQuestion { zero, one , two}

class _pageFiveState extends State<pageFive> {

  Paciente _editedPatient;
  
  int _radioValue1 = -1;
  bool comboBox1 = false;

  int _radioValue2 = -1;
  bool comboBox2 = false;

  int _radioValue3 = -1;
  bool comboBox3 = false;

  FirstQuestion _character = FirstQuestion.zero;
  SecondQuestion _character2 = SecondQuestion.zero;
  ThirdQuestion _character3 = ThirdQuestion.zero;

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
            MaterialPageRoute(builder: (context) => pageSix(_editedPatient))
          );
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Bloco 2 - Monitorização Ventilatória"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container(),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 9,
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
                    maxHeight: SizeConfig.blockSizeVertical * 9,), 
                    child: Text("9 - Paciente fazendo uso de suporte adicional de oxigênio", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)
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
                                      _editedPatient.choices[8] = 1;
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
                                      _editedPatient.choices[8] = 2;
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
                    child: Text("10 - Cuidado com vias aérias artificiais - Tubo Oritraqueal ou Traqueostomia", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)
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
                                  value: SecondQuestion.one,
                                  groupValue: _character2,
                                  onChanged: (SecondQuestion value) {
                                    setState(() {
                                      _character2 = value;
                                      _radioValue2 = 1;
                                      _editedPatient.choices[9] = 1;
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
                                      _editedPatient.choices[9] = 2;
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
                    child: Text("11 - Tratamento para função pulmonar - Fisioterapia, Nebulização ou Aspiração de vias aérias", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5,),),)
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
                                  value: ThirdQuestion.one,
                                  groupValue: _character3,
                                  onChanged: (ThirdQuestion value) {
                                    setState(() {
                                      _character3 = value;
                                      _radioValue3 = 1;
                                      _editedPatient.choices[10] = 1;
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
                                  value: ThirdQuestion.two,
                                  groupValue: _character3,
                                  onChanged: (ThirdQuestion value) {
                                    setState(() {
                                      _character3 = value;
                                      _radioValue3 = 2;
                                      _editedPatient.choices[10] = 2;
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