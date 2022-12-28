import 'package:flutter/material.dart';
import 'package:laboflutter_vf_hh/Frigo_Page.dart';
import 'package:laboflutter_vf_hh/Note_Page.dart';
import 'package:laboflutter_vf_hh/Page_Login.dart';
import 'package:laboflutter_vf_hh/Recette_Page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showDialogFrigo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Présentation"),
          content: const Text("Contenu de la boîte de dialogue"),
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
      },
    );
  }
  void _showDialogRecette() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Présentation"),
          content: const Text("Contenu de la boîte de dialogue"),
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
                      builder: (context) => RecettePage()),
                );
              },
            ),
          ],
        );
      },
    );
  }
  void _showDialogNote() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Présentation"),
          content: const Text("Contenu de la boîte de dialogue"),
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
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Page Principal"),
          actions: <Widget>[
            // Ajoutez ici le widget pour le bouton qui change de fenêtre
            IconButton(
              icon: const Icon(Icons.login),
              onPressed: () {
                // Ajoutez ici le code pour changer de fenêtre
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PageLogin()),
                );
              },
            ),
          ],
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
      Center(
      child: ScaleTransition(
        scale: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(
        // Utilisez un CurvedAnimation pour créer une animation en "S"
        CurvedAnimation(
          parent: _controller,
          curve: Curves.easeInOut,
        ),
      ),
      child: Container(
        width: 600,
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(image: NetworkImage("https://www.pleinevie.fr/wp-content/uploads/pleinevie/2021/06/surcharger-refrigerateur.jpeg")),
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
            _showDialogFrigo();
          },
        ),
      ),
    ),
    ),
    const SizedBox(height: 20),
    Center(
    child: ScaleTransition(
    scale: Tween<double>(
    begin: 0,
    end: 1,
    ).animate(
    // Utilisez un CurvedAnimation pour créer une animation en "S"
    CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceIn,
    // Décalage de l'animation pour qu'elle se termine un peu après la première
    ),
    ),
    child: Container(
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
                      _showDialogRecette();
                    },
                    child: Image.network(
                      'https://www.pleinevie.fr/wp-content/uploads/pleinevie/2021/06/surcharger-refrigerateur.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 0,
                  end: 1,
                ).animate(
    CurvedAnimation(
    parent: _controller,
    curve: Curves.bounceIn,
    // Décalage de l'animation pour qu'elle se termine un peu après la première
    ),
    ),
                child: Container(
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
                      _showDialogNote();
                    },
                    child: Image.network(
                      'https://www.pleinevie.fr/wp-content/uploads/pleinevie/2021/06/surcharger-refrigerateur.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

