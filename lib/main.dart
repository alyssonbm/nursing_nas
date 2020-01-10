import 'package:flutter/material.dart';
import 'package:nunsing_nas/services/authentication.dart';
import 'package:nunsing_nas/ui/nas_newPatient.dart';
import 'package:nunsing_nas/ui/questions/page_one.dart';
import 'package:nunsing_nas/ui/nas_root.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "NAS - Enfermagem",
    debugShowCheckedModeBanner: false,
    home: NasRoot(auth: new Auth()),
    //home: pageOne(),
  ));
}
