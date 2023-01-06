import 'package:flutter/material.dart';
import 'package:laboflutter_vf_hh/Frigo_Page.dart';

class InfoRecette extends StatefulWidget {
  const InfoRecette({Key? key}) : super(key: key);

  @override
  State<InfoRecette> createState() => _InfoRecette();
}

class _InfoRecette extends State<InfoRecette> {
  final List<String> _contenus = [    "Contenu du conteneur 1",    "Contenu du conteneur 2",    "Contenu du conteneur 3",  "Contenu du conteneur 4",    "Contenu du conteneur 5",    "Contenu du conteneur 6", "Contenu du conteneur 7",    "Contenu du conteneur 8",    "Contenu du conteneur 9", "Contenu du conteneur 10",    "Contenu du conteneur 11",    "Contenu du conteneur 12", "Contenu du conteneur 13",    "Contenu du conteneur 14",    "Contenu du conteneur 15", "Contenu du conteneur 16",    "Contenu du conteneur 17",    "Contenu du conteneur 18"];  // Ajoutez ici les autres éléments du tableau

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Recette Page'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const <Widget>[
          // Add widgets here for the different features of your app bar
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: List.generate(18, (index) => createContainer(index + 1)),
          ),
        ),
      ),
    );
  }

  Widget createContainer(int index) {
    return Column(
      children: [
        SizedBox(height: 20),
        Container(
          width: 600,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                spreadRadius: 5.0,
                offset: Offset(
                  10.0,
                  10.0,
                ),
              )
            ],
          ),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Recette $index"),
                    content: Text(_contenus[index - 1]),
                    actions: <Widget>[
                      ElevatedButton(
                        child: const Text("Retour"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                        child: const Text("Frigo"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FrigoPage()),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Image.network(
              'https://www.pleinevie.fr/wp-content/uploads/pleinevie/2021/06/surcharger-refrigerateur.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

  createContainer(int index) {}
