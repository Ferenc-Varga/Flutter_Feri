
import 'package:laboflutter_vf_hh/Frigo_Page.dart';
import 'package:flutter/material.dart';


class Dialogue extends StatefulWidget {
  const Dialogue({Key? key}) : super(key: key);

  @override
  State<Dialogue> createState() => _Dialogue();
}

void _showDialog() {
  var context;
  showDialog(
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Présentation"),
        content: const Text("Ceci est la fenêtre du Frigo, cette fenêtre va vous permettre de répertorier et ajouter dans une base de données les aliments que vous avez dans votre frigo pour ensuite voir quelles recettes il est possible de faire avec ces aliments"),
        actions: <Widget>[
          ElevatedButton(
            child: const Text("Retour"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text("Aller"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FrigoPage()),
              );
            },
          ),
        ],
      );
    }, context: context,
  );
}

class _Dialogue extends State<Dialogue> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}