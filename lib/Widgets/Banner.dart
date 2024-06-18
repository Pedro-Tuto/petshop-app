import 'package:flutter/material.dart';

class BannerA3 extends StatelessWidget {
  const BannerA3({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      height: screenSize.height / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350,
        maxHeight: 450,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          
          //Título
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bem vindo ao PetCare App",
                style: TextStyle(
                  fontSize: 32,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  //color: Color.fromARGB(255, 15, 52, 61),
                ),
              ),
              Text(
                "Nosso projeto para a A3!",
                style: TextStyle(
                  fontSize: 42,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),

          //Logo
          Image.asset(
            "assets/Logo02.png",
            width: screenWidth / 2,
          )
        ],
      ),
    );
  }
}
