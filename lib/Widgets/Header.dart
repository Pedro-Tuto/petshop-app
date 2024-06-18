import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 60,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.maxFinite,

              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color.fromARGB(255, 217, 249, 255), Color.fromARGB(255, 150, 216, 255),],),
                borderRadius: BorderRadius.circular(100),
              ),

              //Header
              child: Row(
                children: [

                  //Logo
                  const Padding(padding: EdgeInsets.only(left: 20),
                    child: Text("Petshop App", style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 15, 52, 61),
                  ),),
                  ),

                  
                  
                  Spacer(),

                  //Botões
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        //Botão User
                        TextButton(onPressed: (){Navigator.of(context).pushNamed("/user-create");}, child: const Text("New User", style: TextStyle(color: Color.fromARGB(255, 15, 52, 61)),),),

                        //Botão Pet
                        TextButton(onPressed: (){Navigator.of(context).pushNamed("/pet-create");}, child: const Text("New Pet", style: TextStyle(color: Color.fromARGB(255, 15, 52, 61)),),),
                      ],
                    ),
                  ),


                  
                ],
              ),
            );
  }
}