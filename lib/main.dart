import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do_app/home_page.dart';

void main() async {
  
  //INIT THE HIVE
  
   await Hive.initFlutter();
  
  
   //OPEN A BOX
   var box = await Hive.openBox('mybox');
   
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}


