import 'package:flutter/material.dart';

class pageOne extends StatefulWidget {
  @override
  _pageOneState createState() => _pageOneState();
}

enum SingingCharacter { one , two , tree }

class _pageOneState extends State<pageOne> {
  
  int _radioValue1 = -1;
  SingingCharacter _character = SingingCharacter.one;
  
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
                margin: EdgeInsets.only(top: 80.0),
                padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                color: Colors.blue,
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
                      value: SingingCharacter.one,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
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
                      value: SingingCharacter.two,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
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
                      value: SingingCharacter.tree,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
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
                color: Colors.amber,
                child: Text("2 - Investigações Laboratoriais\nBioquimicas e Microbiológicas", style: TextStyle(color: Colors.white, fontSize: 20.0),),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 0.0),
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                color: Colors.amber[50],
                child: Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                      value: SingingCharacter.tree,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
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