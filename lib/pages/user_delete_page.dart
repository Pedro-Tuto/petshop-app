import 'package:flutter/material.dart';
import 'package:petshop/request.dart';

class UserDeletePage extends StatefulWidget {
  const UserDeletePage({Key? key}) : super(key: key);

  @override
  State<UserDeletePage> createState() => _UserDeletePageState();
}

class _UserDeletePageState extends State<UserDeletePage> {
  int userId = -1;

  void deleteUser(int userId) async {
    try {
      await api.deleteUserUsersIdDelete(userId);

      // Exibindo o pop-up se o usuário for deletado com sucesso
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Usuário Deletado"),
            content: Text("O usuário foi deletado com sucesso."),
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
        userId = -1;
      });
    } catch (e) {

      // Exibindo o pop-up se o usuário não for encontrado
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Usuário não encontrado"),
            content: const Text("O ID do usuário não foi encontrado."),
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
        title: const Text("Deletar Usuário"),
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
                    hintText: "Digite um Id de um usuário para deletar...",
                  ),
                  onChanged: (value) {
                      userId = int.tryParse(value) ?? -1;
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (userId != -1) {
                  deleteUser(userId);
                }
              },
              child: const Text("Deletar Usuário"),
            ),
          ],
        ),
      ),
    );
  }
}
