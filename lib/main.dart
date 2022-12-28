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

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: const TextTheme(
        bodyText2:  TextStyle(color: Colors.white),
        ),
        ),

      home: MainPage(),
      );
    }
}