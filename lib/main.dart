import 'package:flutter/material.dart';
import 'package:nunsing_nas/services/authentication.dart';
import 'package:nunsing_nas/ui/nas_newPatient.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_one.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_two.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_three.dart';
import 'package:nunsing_nas/ui/questions/firstBlock/page_Four.dart';
import 'package:nunsing_nas/ui/nas_root.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_five.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_six.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_seven.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_eight.dart';
import 'package:nunsing_nas/ui/questions/secondBlock/page_nine.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    title: "NAS - Enfermagem",
    debugShowCheckedModeBanner: false,
    //home: NasRoot(auth: new Auth()),
    home: pageNine(),
  ));
}
