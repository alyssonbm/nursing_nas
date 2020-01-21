class Paciente {
  String name;
  double lastNas;
  List <int> choices;
  String img;

  Paciente(){
    this.lastNas = 0;
    this.choices = new List<int>.filled(24, 0);
  }   

  setName(String name){
    this.name = name;
  }

  String getName(){
    return this.name;
  }

  setLastNas(double nas){
    this.lastNas = nas;
  }

  double getLastNas(){
    return this.lastNas;
  }

  setImg(String img){
    this.img = img;
  }

  String getImg(){
    return this.img;
  }

  double nasResult(){
    double nas = 0;

    if(this.choices[0] == 1)
      nas += 4.5;
    else if (this.choices[0] == 2)
      nas += 12.1;
    else if (this.choices[0] == 3)
      nas += 19.6;

    if(this.choices[1] == 1)
      nas += 4.3;

    if(this.choices[2] == 1)
      nas += 5.6;

    if(this.choices[3] == 1)
      nas += 4.1;
    else if (this.choices[3] == 2)
      nas += 16.5;
    else if (this.choices[3] == 3)
      nas += 20.0;

    if(this.choices[4] == 1)
      nas += 1.8;

    if(this.choices[5] == 1)
      nas += 5.5;
    else if (this.choices[5] == 2)
      nas += 12.4;
    else if (this.choices[5] == 3)
      nas += 17.0;

    if(this.choices[6] == 1)
      nas += 4.0;
    else if (this.choices[6] == 2)
      nas += 32.0;

    if(this.choices[7] == 1)
      nas += 4.2;
    else if (this.choices[7] == 2)
      nas += 23.2;
    else if (this.choices[7] == 3)
      nas += 30.0;
    
    if(this.choices[8] == 1)
      nas += 1.4;
    else if (this.choices[8] == 2)
      nas += 0.0;

    if(this.choices[9] == 1)
      nas += 1.8;
    else if (this.choices[9] == 2)
      nas += 0.0;

    if(this.choices[10] == 1)
      nas += 4.4;
    else if (this.choices[10] == 2)
      nas += 0.0;

    if(this.choices[11] == 1)
      nas += 1.2;
    else if (this.choices[11] == 2)
      nas += 0.0;

    if(this.choices[12] == 1)
      nas += 2.5;
    else if (this.choices[12] == 2)
      nas += 0.0;

    if(this.choices[13] == 1)
      nas += 1.7;
    else if (this.choices[13] == 2)
      nas += 0.0;

    if(this.choices[14] == 1)
      nas += 7.1;
    else if (this.choices[14] == 2)
      nas += 0.0;

    if(this.choices[15] == 1)
      nas += 7.7;
    else if (this.choices[15] == 2)
      nas += 0.0;

    if(this.choices[16] == 1)
      nas += 7.0;
    else if (this.choices[16] == 2)
      nas += 0.0;

    if(this.choices[17] == 1)
      nas += 1.6;
    else if (this.choices[17] == 2)
      nas += 0.0;

    if(this.choices[18] == 1)
      nas += 1.3;
    else if (this.choices[18] == 2)
      nas += 0.0;

    if(this.choices[19] == 1)
      nas += 2.8;
    else if (this.choices[19] == 2)
      nas += 0.0;

    if(this.choices[20] == 1)
      nas += 1.3;
    else if (this.choices[20] == 2)
      nas += 0.0;

    if(this.choices[21] == 1)
      nas += 2.8;
    else if (this.choices[21] == 2)
      nas += 0.0;

    if(this.choices[22] == 1)
      nas += 1.9;
    else if (this.choices[22] == 2)
      nas += 0.0;  

    return nas;
  }
}