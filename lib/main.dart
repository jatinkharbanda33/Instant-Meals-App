import 'package:flutter/material.dart';
import 'Screens/categoriesscreen.dart';
import 'Screens/Categorymealscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed'
          )

        ),
      ),
      home: Categories(),
      routes:{
        CatScreen.mealscreenroute : (ctx)=>CatScreen(),
      },
    );
  }
}


