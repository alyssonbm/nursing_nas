import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_three.dart';

class pageTwo extends StatefulWidget {

  final Paciente patient;

  pageTwo(this.patient);

  @override
  _pageTwoState createState() => _pageTwoState();
}

enum FirstQuestion { zero, one , two , tree }

class _pageTwoState extends State<pageTwo> {
  
  Paciente _editedPatient;

  int _radioValue1 = -1;
  bool comboBox1 = false;
  FirstQuestion _character = FirstQuestion.zero;

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
            MaterialPageRoute(builder: (context) => pageThree(_editedPatient))
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
            flex: 2,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                    width: SizeConfig.blockSizeHorizontal * 90,
                  decoration: new BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(40.0),
                      topRight: const  Radius.circular(40.0)
                    )
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 75,
                      maxHeight: SizeConfig.blockSizeVertical * 8,), 
                      child: Text("3 - Opcional", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5),),  
                    ),
                  )
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  decoration: new BoxDecoration(
                    color: Colors.red[100],
                  ),
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(                    
                        value: comboBox1,
                        onChanged: (value) {
                          setState(() {
                            value = value;
                            comboBox1 = value;
                            if(value == true)
                              _editedPatient.choices[2] = 1;
                            else
                              _editedPatient.choices[2] = 0;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Medição, exeto drogas vasoativas", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4))
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                Container(
                  height: SizeConfig.blockSizeVertical * 10,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue, //new Color.fromRGBO(255, 0, 0, 0.0),
                  child: Center(child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 75,
                      maxHeight: SizeConfig.blockSizeVertical * 8,), 
                      child: Text("4 - Procedimentos de Higiene", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5),),  
                    ),
                  )
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 10,
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
                            _editedPatient.choices[3] = 1;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Cuidádos básicos de rotina, realizado com numa ou duas pessoas", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4))
                      ),
                    ],
                  ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 10,
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
                            _editedPatient.choices[3] = 2;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Procesimentos de durem mais de 2 horas, nem algum plantão", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4))
                      ),
                    ],
                  ),
                ),

                Container(
                  height: SizeConfig.blockSizeVertical * 10,
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
                        value: FirstQuestion.tree,
                        groupValue: _character,
                        onChanged: (FirstQuestion value) {
                          setState(() {
                            _character = value;
                            _radioValue1 = 3;
                            _editedPatient.choices[3] = 3;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Procesimentos que durem mais de 4 horas, nem algum plantão", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4))
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