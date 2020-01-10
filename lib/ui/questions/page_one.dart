import 'package:flutter/material.dart';

class pageOne extends StatefulWidget {
  @override
  _pageOneState createState() => _pageOneState();
}

enum FirstQuestion { zero, one , two , tree }

class _pageOneState extends State<pageOne> {
  
  int _radioValue1 = -1;
  bool comboBox1 = false;
  FirstQuestion _character = FirstQuestion.zero;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.arrow_forward),
        backgroundColor: Colors.blue,
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("NAS"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50.0),
                padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                //color: Colors.blue,
                decoration: new BoxDecoration(
                  color: Colors.blue, //new Color.fromRGBO(255, 0, 0, 0.0),
                  borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(40.0),
                    topRight: const  Radius.circular(40.0))
                ),
                child: Text("1 - Monitorização e Controles", style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                        });
                      },
                    ),
                    Text("Sinais vitais horários, Calculo e registo do\nbalanço Hídrico")
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
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
                        });
                      },
                    ),
                    Text("Presença a beira do leito e observação\ncontínua por duas horas ou mais em algum\nplatão por razões de gravidade, segurança\nou terapia")
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                color: Colors.blue[50],
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
                        });
                      },
                    ),
                    Text("Presença a beira do leito e observação ou\natividade contínua por 4 horas ou mais")
                  ],
                ),
              )
            ],
          ),

          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                color: Colors.red[400],
                child: Text("2 - Investigações Laboratoriais\nBioquimicas e Microbiológicas", style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                decoration: new BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0)
                  )
                ),
                child: Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children: <Widget>[
                    Checkbox(                    
                      value: false,
                      onChanged: (value) {
                        setState(() {
                          value = value;
                          comboBox1 = value;
                        });
                      },
                    ),
                    Text("Presença a beira do leito e observação ou\natividade contínua por 4 horas ou mais")
                  ],
                ),
              )
            ],
          ),

        ],
      )
    );
  }
}