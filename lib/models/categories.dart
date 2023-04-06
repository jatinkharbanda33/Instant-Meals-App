import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../models/dummy_data.dart';
import '../models/categoryitem.dart';
import '../models/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instant Meals'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((catdata) {
          return CategoryItem(catdata.title, catdata.color);
        }).toList(),
        
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          childAspectRatio: 1.5,
          mainAxisSpacing: 20,
        ))
       ,
    );
   
  }
}
