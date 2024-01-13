import 'package:flutter/material.dart';
import 'package:food_receipe_app/modules/food%20receipe/search_result.dart';
import 'package:food_receipe_app/modules/food%20receipe/search_recipe.dart';
import 'package:food_receipe_app/modules/saved%20recipe/saved_recipe.dart';
import 'package:food_receipe_app/modules/saved%20recipe/widgets/saved_itemlist.dart';

class FoodReceipeApp extends StatelessWidget {
  const FoodReceipeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        indicatorColor: Colors.white,
      ),
      home: SavedRecipePage(),
    );
  }
}
