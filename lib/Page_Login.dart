// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget{
  const PageLogin({Key? key}) : super(key: key);

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Ffac.2F2019.2F04.2F19.2Fe757c813-4046-453b-86c7-3211849bde30.2Ejpeg/1200x900/quality/80/crop-from/center/6-conseils-pour-entretenir-son-frigo.jpeg"))
        ),
        child: SafeArea(
          child: SingleChildScrollView(
          child: Center(
            child: Column(
              children:  [
                const SizedBox(height: 130),
            //Bon, Retour
              const Text(
                  'MyFridge',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
              const SizedBox(height: 20),
              const Text(
                'Bienvenue, vous nous avez manqué!',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
                const SizedBox(height: 10),


              //Email Textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                         child: Container(
                            width: 400,
                            decoration: BoxDecoration(
                              color:  Colors.grey[700],
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                                 child: const Padding(
                                   padding: EdgeInsets.only(left: 20.0),
                                   child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email',
                              ),
                            ),
                                 ),
                      ),
                  ),
                const SizedBox(height: 20),



              //Password TextField


              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  color:  Colors.grey[700],
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                 child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mot De Passe',
                    ),
                  ),
                ),
              ),
            ),
                const SizedBox(height: 20),

              //Sign in Button

                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 265.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                    child: Text(
                      'Se Connecter',
                      style: TextStyle(
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )
                    ),
                  ),
                ),
                ),
                const SizedBox(height: 30),

              //Not a member ? Register now

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text (
                      'Membre ?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      ),

                      Text(
                      'Enregister Maintenant',
                      style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      ),
                      )]
                )

          ])),),
          ),

    ));
    }
}