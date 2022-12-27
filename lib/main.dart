import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Main_Page.dart';
import 'Page_Login.dart';

  void main() async{

    runApp(const MyApp());

    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

}

  class MyApp extends StatelessWidget{
    const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      );
    }
}