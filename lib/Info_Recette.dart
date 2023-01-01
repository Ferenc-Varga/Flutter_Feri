import 'package:flutter/material.dart';

class InfoRecette extends StatefulWidget {
  const InfoRecette({Key? key}) : super(key: key);

  @override
  State<InfoRecette> createState() => _InfoRecette();
}

class _InfoRecette extends State<InfoRecette> {
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
            children: List.generate(18, (index) => createContainer(index)),
          ),
        ),
      ),
    );
  }
}