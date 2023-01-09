import 'package:flutter/material.dart';
import 'package:mangan_recipe_app/persons_model.dart';
import 'package:mangan_recipe_app/services.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  late Future<Persons?> movieList;

  @override
  void initState() {
    super.initState();
    updateMovie();
  }

  updateMovie() {
    movieList = PersonsService.getPersons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Your Recipe'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.grey.withOpacity(0.4),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('assets/recipe.png',
                        fit: BoxFit.cover, height: 120),
                    SizedBox(height: 8),
                    Text('Recipe $index',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('by John Doe'),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
