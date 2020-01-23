import 'package:flutter/material.dart';
import 'package:nunsing_nas/Class/paciente.dart';
import 'package:nunsing_nas/Class/size_config.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_four.dart';

class pageThree extends StatefulWidget {

  final Paciente patient;

  pageThree(this.patient);

  @override
  _pageThreeState createState() => _pageThreeState();
}

enum FirstQuestion { zero, one , two , tree }

class _pageThreeState extends State<pageThree> {

  Paciente _editedPatient;
  
  int _radioValue1 = -1;
  bool comboBox1 = false;
  FirstQuestion _character = FirstQuestion.zero;

  @override
  void initState(){
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
            MaterialPageRoute(builder: (context) => pageFour(_editedPatient))
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
                  child: Center(child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 70,
                      maxHeight: SizeConfig.blockSizeVertical * 8,), 
                      child: Text("5 - Opcional", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5, ),),  
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
                              _editedPatient.choices[4] = 1;
                            else
                              _editedPatient.choices[4] = 0;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Todos os cuidados com drenos, exceto SNG", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
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
                  height: SizeConfig.blockSizeVertical * 8,
                  width: SizeConfig.blockSizeHorizontal * 90,
                  color: Colors.blue, 
                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 75,
                      maxHeight: SizeConfig.blockSizeVertical * 8,), 
                      child: Text("6 - Mobilização e Posicionamento", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 5),),  
                    ),
                  ) 
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
                            _editedPatient.choices[5] = 1;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Até 3 vezes em 24 horas", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
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
                            _editedPatient.choices[5] = 2;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("Mais de 3 vezes em 24 horas, ou com 2 enfermeiros em qualquer frequência", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
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
                        value: FirstQuestion.tree,
                        groupValue: _character,
                        onChanged: (FirstQuestion value) {
                          setState(() {
                            _character = value;
                            _radioValue1 = 3;
                            _editedPatient.choices[5] = 3;
                          });
                        },
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                        maxWidth: SizeConfig.blockSizeHorizontal * 70,
                        maxHeight: SizeConfig.blockSizeVertical * 8,), 
                        child: Text("3 ou mais enfermeiros, qualquer frequência", style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4)),  
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