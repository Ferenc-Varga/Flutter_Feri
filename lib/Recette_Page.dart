
import 'package:flutter/material.dart';
import 'package:laboflutter_vf_hh/Recipe_card.dart';
import 'package:laboflutter_vf_hh/recipe.api.dart';
import 'package:laboflutter_vf_hh/recipe.dart';

class RecettePage extends StatefulWidget {
  const RecettePage({Key? key}) : super(key: key);

  @override
  State<RecettePage> createState() => _RecettePage();
}

class _RecettePage extends State<RecettePage> {

  late List<Recipe> _recipes;
  //bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
     // _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text('Recettes'),
          ],
        ),
      ),
        //:body: _isLoading
        //? const Center(child: CircularProgressIndicator())
        body : ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
              title: _recipes[index].name,
              cookTime: _recipes[index].totalTime,
              rating: _recipes[index].rating.toString(),
              thumbnailUrl: _recipes[index].images);
        }
    ));
  }
}
