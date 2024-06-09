import 'package:flutter/material.dart';
import 'package:petshop/model.dart';
import 'package:petshop/request.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  User? _user;

  void loadUser(int userId) async {
    try {
      final user = await getUser(userId);

      setState(() {
        _user = user;
      });
    } catch (e) {
      setState(() {
        _user = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuários"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              final userId = int.tryParse(value);
              if (userId != null) {
                loadUser(userId);
              }
            },
          ),
          Text(_user?.name ?? "Usuário não encontrado"),
        ],
      ),
    );
  }
}
