import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import './Categorymealscreen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String label;
  CategoryItem(this.title, this.color,this.label);
  void categoryscreen(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(CatScreen.mealscreenroute, arguments: {'title': this.title , 'id':this.label});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => categoryscreen(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(child: Text(title)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
