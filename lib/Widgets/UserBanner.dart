import 'package:flutter/material.dart';

class Userbanner extends StatelessWidget {
  const Userbanner({super.key});

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
          //Logo
          Image.asset(
            "assets/Logo02.png",
            width: screenWidth / 2,
          ),

          //Botões
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Botão Get
              SizedBox(
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/user-info");
                  },
                  child: const Text(
                    "Buscar Usuário",
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
                    Navigator.of(context).pushNamed("/user-create");
                  },
                  child: const Text(
                    "Cadastrar Usuário",
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
                  onPressed: () {
                    Navigator.of(context).pushNamed("/user-update");
                  },
                  child: const Text(
                    "Editar Usuário",
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
                    Navigator.of(context).pushNamed("/user-delete");
                  },
                  child: const Text(
                    "Deletar Usuário",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
