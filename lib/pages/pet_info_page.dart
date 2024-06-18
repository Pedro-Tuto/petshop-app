import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/request.dart';

class PetInfoPage extends StatefulWidget {
  const PetInfoPage({super.key});

  @override
  State<PetInfoPage> createState() => _PetInfoPageState();
}

class _PetInfoPageState extends State<PetInfoPage> {
  PetRead? _pet;

  void loadPet(int petId) async {
    try {
      final pet = await api.getPetPetsIdGet(petId);

      setState(() {
        _pet = pet;
      });
    } catch (e) {
      setState(() {
        _pet = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pets"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: SizedBox(
                      width: 300.0,
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
                          hintText: "Digite um Id de um pet para buscar...",
                        ),
                        onChanged: (value) {
                          final petId = int.tryParse(value);
                          if (petId != null) {
                            loadPet(petId);
                          } else {
                            loadPet(0);
                          }
                        },
                      ))),
              if (_pet != null) ...[
                Text("Nome do pet: ${_pet!.name}"),
                Text("Raça do pet: ${_pet!.breed}"),
                Text("Cor do pet: ${_pet!.color}"),
                Text(
                    "Data de nascimento do pet: ${_pet!.dateOfBirth.toString()}"),
                Text("Peso do pet: ${_pet!.weight.toString()}"),
                Text("Nome do dono: ${_pet!.owner.name}"),
                Text("Endereço do dono: ${_pet!.owner.address}"),
                Text("Email do dono: ${_pet!.owner.email}"),
                Text("Telefone do dono: ${_pet!.owner.phone}"),
              ] else ...[
                const Text("Pet não encontrado"),
              ],
            ],
          ),
        ));
  }
}
