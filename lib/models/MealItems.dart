import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:meals/models/meals.dart';
import '../models/dummy_data.dart';
class Mealitem extends StatelessWidget {
  
  final String title;
  final String imageurl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  Mealitem(
    {
     required this.title,
    required  this.imageurl,
    required  this.affordability,
     required this.complexity,
     required this.duration,
    }
  );
  void selectmeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectmeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                  child: Image.network(imageurl,height: 250,width: double.infinity,fit: BoxFit.cover)    ,         
                ),
                
              ],
            )
          ],
        ),


      ),
    );
  }
}
