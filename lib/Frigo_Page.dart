
import 'package:flutter/material.dart';

class FrigoPage extends StatefulWidget {
  const FrigoPage({Key? key}) : super(key: key);

  @override
  State<FrigoPage> createState() => _FrigoPage();
}

class _FrigoPage extends State<FrigoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FrigoPage'),
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
    );
  }

  }