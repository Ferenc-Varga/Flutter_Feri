
import 'package:flutter/material.dart';

class RecettePage extends StatefulWidget {
  const RecettePage({Key? key}) : super(key: key);

  @override
  State<RecettePage> createState() => _RecettePage();
}

class _RecettePage extends State<RecettePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RecettePage'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const <Widget>[
          // Ajoutez ici les widgets pour les différentes fonctionnalités de votre appbar
        ],
      ),
    );
  }
}
