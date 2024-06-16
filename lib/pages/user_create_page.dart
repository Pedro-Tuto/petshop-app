import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/request.dart';

class UserCreatePage extends StatefulWidget {
  const UserCreatePage({super.key});

  @override
  State<UserCreatePage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserCreatePage> {
  final form = <String, dynamic> {};


  void createUser() async {
    final userCreate = UserCreate.fromJson(form);
    final user = await api.postUserUsersPost(userCreate!);
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Usuário"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              form["name"] = value;
              
            },
            decoration: InputDecoration(labelText: "Nome"),
          ),
          TextField(
            onChanged: (value) {
              form["email"] = value;
              
            },
            decoration: InputDecoration(labelText: "E-mail"),
          ),
          TextField(
            onChanged: (value) {
              form["phone"] = value;
              
            },
            decoration: InputDecoration(labelText: "Telefone"),
          ),
          TextField(
            onChanged: (value) {
              form["address"] = value;
              
            },
            decoration: InputDecoration(labelText: "Endereço"),
          ),
          TextField(
            onChanged: (value) {
              form["password"] = value;
              
            },
            decoration: InputDecoration(labelText: "Senha"),
          ),
          ElevatedButton(onPressed: createUser, child: Text("Cadastrar"))
        ],
      ),
    );
  }
}
