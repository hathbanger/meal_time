import 'package:flutter/material.dart';
import 'package:meal_time/widgets/meal_item.dart';

import '../models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text("You have no favorites yet - start adding some.",
            style: Theme.of(context).textTheme.headline6),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: favoriteMeals[i].id,
            title: favoriteMeals[i].title,
            imgUrl: favoriteMeals[i].imageUrl,
            complexity: favoriteMeals[i].complexity,
            affordability: favoriteMeals[i].affordability,
            duration: favoriteMeals[i].duration,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
