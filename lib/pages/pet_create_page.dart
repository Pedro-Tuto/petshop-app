import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/request.dart';

class PetCreatePage extends StatefulWidget {
  const PetCreatePage({super.key});

  @override
  State<PetCreatePage> createState() => _PetCreatePageState();
}

class _PetCreatePageState extends State<PetCreatePage> {
  final form = <String, dynamic>{};

  // Controllers para os campos de texto
  final nameController = TextEditingController();
  final breedController = TextEditingController();
  final colorController = TextEditingController();
  final dateOfBirthController = TextEditingController();
  final weightController = TextEditingController();
  final ownerIdController = TextEditingController();

  void createPet() async {
    final petCreate = PetCreate.fromJson(form);
    await api.postPetPetsPost(petCreate!);

    // Limpar os campos após a criação do pet
    nameController.clear();
    breedController.clear();
    colorController.clear();
    dateOfBirthController.clear();
    weightController.clear();
    ownerIdController.clear();

    // Resetar o formulário
    form.clear();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sucesso"),
          content: Text("Pet cadastrado com sucesso!"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop(); // Fechar o diálogo
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
        title: Text("Cadastrar Pet"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: nameController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Nome",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["name"] = value;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: breedController,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "Raça",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onChanged: (value) {
                  form["breed"] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: colorController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Cor",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["color"] = value;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: dateOfBirthController,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "Data de nascimento",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: "yyyy-MM-dd",
                ),
                onChanged: (value) {
                  form["date_of_birth"] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 300.0,
                child: TextField(
                  controller: weightController,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Peso",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  onChanged: (value) {
                    form["weight"] = value;
                  },
                ),
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextField(
                controller: ownerIdController,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 13,
                ),
                decoration: const InputDecoration(
                  labelText: "Id do dono",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                onChanged: (value) {
                  form["owner_id"] = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: createPet,
                child: Text("Cadastrar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
