
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20), // Ajout d'un padding à gauche et à droite
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(5, (index) => createContainer(index + 1)),
        ),
      ),
    );
  }

  Widget createContainer(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20), // Ajout d'un padding horizontal
      child: Container(
        width: 200,
        height: 100,
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
        child: Image.network(
          'https://www.pleinevie.fr/wp-content/uploads/pleinevie/2021/06/surcharger-refrigerateur.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}