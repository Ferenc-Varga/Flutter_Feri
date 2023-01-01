
import 'package:flutter/material.dart';
import 'package:laboflutter_vf_hh/Info_Recette.dart';
import 'package:laboflutter_vf_hh/recipe.api.dart';
import 'package:laboflutter_vf_hh/recipe.dart';

import 'Recipe_card.dart';


class RecettePage extends StatefulWidget {
  @override
  _RecettePage createState() => _RecettePage();
}

class _RecettePage extends State<RecettePage> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipe')
            ],
          ),
          actions: [
            // Ajout du menu ici
            PopupMenuButton<String>(
              onSelected: (String result) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => InfoRecette(),
                ));},
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: 'menu_item_1',
                  child: Text('Info Recette'),
                ),
              ],
            ),
          ],
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
          itemCount: _recipes.length,
          itemBuilder: (context, index) {
            return RecipeCard(
                title: _recipes[index].name,
                cookTime: _recipes[index].totalTime,
                rating: _recipes[index].rating.toString(),
                thumbnailUrl: _recipes[index].images);
          },
        ));
  }
}
