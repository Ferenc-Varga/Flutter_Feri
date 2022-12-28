
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
    );
  }
}
