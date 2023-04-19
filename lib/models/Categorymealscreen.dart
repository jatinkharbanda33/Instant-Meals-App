import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CatScreen extends StatelessWidget {
  // final String title;
  // CatScreen(this.title);
  static const mealscreenroute = '/categorymealscreen';
  @override
  Widget build(BuildContext context) {
    final resultargs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String show = resultargs['title'] as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(show),
      ),
      body: Center(
        child: Text("Item Ingredients"),
      ),
    );
  }
}
