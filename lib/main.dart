import 'package:flutter/material.dart';
import 'package:petshop/pages/pet_delete_page.dart';
import 'package:petshop/pages/user_delete_page.dart';
import 'package:petshop/pages/user_info_page.dart';
import 'package:petshop/pages/user_create_page.dart';
import 'package:petshop/pages/pet_info_page.dart';
import 'package:petshop/pages/pet_create_page.dart';
import 'package:petshop/pages/user_update_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petshop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Petshop App'),
      routes: {
        "/user-info": (context) => const UserInfoPage(),
        "/user-create": (context) => const UserCreatePage(),
        "/pet-info": (context) => const PetInfoPage(),
        "/pet-create": (context) => const PetCreatePage(),
        "/user-delete": (context) => const UserDeletePage(),
        "/pet-delete": (context) => const PetDeletePage(),
        "/user-update": (context) => const UserUpdatePage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/user-info");
              },
              child: Text("Usuários"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/user-create");
                },
                child: Text("Cadastrar Usuário"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/user-delete");
              },
              child: Text("Deletar Usuário"),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/pet-info");
                  },
                  child: Text("Pets"),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/pet-create");
              },
              child: Text("Cadastrar Pet"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/pet-delete");
                },
                child: Text("Deletar Pet"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/user-update");
              },
              child: Text("Atualizar Usuário"),
            )
          ],
        ),
      ),
    );
  }
}
