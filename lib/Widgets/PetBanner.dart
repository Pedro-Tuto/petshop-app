import 'package:flutter/material.dart';

class PetBanner extends StatelessWidget {
  const PetBanner({super.key});

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
              minHeight: 250,
              maxHeight: 400,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //Botões
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Botão Get
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/pet-info");
                        },
                        child: const Text(
                          "Buscar Pet",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    //Botão Create
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/pet-create");
                        },
                        child: const Text(
                          "Cadastrar Pet",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    //Botão Edit
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Editar Pet",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 15,
                    ),

                    //Botão Delete
                    SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/pet-delete");
                        },
                        child: const Text(
                          "Deletar Pet",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //Logo
                Image.asset(
                  "assets/Logo02.png",
                  width: screenWidth / 2,
                ),
              ],
            ),
          );
  }
}