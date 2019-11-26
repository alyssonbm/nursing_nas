import 'package:flutter/material.dart';
import 'package:nunsing_nas/ui/nas_home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main(){

  Firestore.instance.collection("teste").document('teste').setData({"teste":"teste"});

  runApp(MaterialApp(
    home: NasHome(),
  ));
}