import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      //margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),

      decoration: const BoxDecoration(
        color: Colors.white,
        //Header Shadow
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 10,
            offset: Offset(0, 10),
          )
        ]

        //gradient: const LinearGradient(
          //colors: [
          //  Color.fromARGB(255, 217, 249, 255),
          //  Color.fromARGB(255, 150, 216, 255),
          //],
        //),
        //borderRadius: BorderRadius.circular(100),
      ),

      //Header
      child: Row(
        children: [
          //Logo
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "PetCare",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 15, 52, 61),
              ),
            ),
          ),

          Spacer(),

          //Botões
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              children: [
                //Botão User
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/user-create");
                  },
                  child: const Text(
                    "New User",
                    style: TextStyle(color: Color.fromARGB(255, 15, 52, 61), fontWeight: FontWeight.bold, fontSize: 16,),
                  ),
                ),

                //Botão Pet
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/pet-create");
                  },
                  child: const Text(
                    "New Pet",
                    style: TextStyle(color: Color.fromARGB(255, 15, 52, 61), fontWeight: FontWeight.bold, fontSize: 16,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
