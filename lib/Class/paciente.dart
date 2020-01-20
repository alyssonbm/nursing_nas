class Paciente {
  String name;
  int resultsNumber;
  List <int> choices;
  var results;
  var testeDates;
  String img;

  Paciente(){
    this.resultsNumber = 0;
    this.choices = new List<int>.filled(24, 0);
  }   

  setName(String name){
    this.name = name;
  }

  String getName(){
    return this.name;
  }

  setResultsNumber(String name){
    this.resultsNumber = resultsNumber;
  }

  int getResultsNumber(){
    return this.resultsNumber;
  }

  setChoices(int choices){
    this.results.add(choices);
  }

  int getChoices(int index){
    return this.choices[index];
  }

  setResults(int results){
    this.results.add(results);
  }

  String getResults(int index){
    return this.results(index);
  }

  setResteDates(int dates){
    this.testeDates.add(dates);
  }

  String getTesteDates(int index){
    return this.testeDates(index);
  }

  setImg(String img){
    this.img = img;
  }

  String getImg(){
    return this.img;
  }

}