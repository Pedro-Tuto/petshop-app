import 'package:flutter/material.dart';
import 'package:petshop/request.dart';

class PetDeletePage extends StatefulWidget {
  const PetDeletePage({Key? key}) : super(key: key);

  @override
  State<PetDeletePage> createState() => _PetDeletePageState();
}

class _PetDeletePageState extends State<PetDeletePage> {
  int petId = -1;

  void deletePet(int petId) async {
    try {
      await api.deletePetPetsIdDelete(petId);

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Pet Deletado"),
            content: Text("O pet foi deletado com sucesso."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );

      // Limpar o campo ID após a exclusão bem-sucedida
      setState(() {
        petId = -1;
      });
    } catch (e) {

      // Exibindo o pop-up se o pet não for encontrado
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Pet não encontrado"),
            content: const Text("O ID do pet não foi encontrado."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deletar Pet"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: 200.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    hintText: "Digite um Id de um pet para deletar...",
                  ),
                  onChanged: (value) {
                      petId = int.tryParse(value) ?? -1;
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (petId != -1) {
                  deletePet(petId);
                }
              },
              child: const Text("Deletar Pet"),
            ),
          ],
        ),
      ),
    );
  }
}
