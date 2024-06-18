import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:petshop/request.dart';

class UserCreatePage extends StatefulWidget {
  const UserCreatePage({super.key});

  @override
  State<UserCreatePage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserCreatePage> {
  final form = <String, dynamic>{};

  void createUser() async {
    final userCreate = UserCreate.fromJson(form);
    await api.postUserUsersPost(userCreate!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastrar Usuário"),
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
                      ))),
              SizedBox(
                width: 300.0,
                child: TextField(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    decoration: const InputDecoration(
                      labelText: "E-mail",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    onChanged: (value) {
                      form["email"] = value;
                    }),
              ),
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
                            labelText: "Telefone",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          onChanged: (value) {
                            form["phone"] = value;
                          }))),
              SizedBox(
                  width: 300.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                    decoration: const InputDecoration(
                      labelText: "Endereço",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                    onChanged: (value) {
                      form["address"] = value;
                    },
                  )),
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
                          labelText: "Senha",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                        onChanged: (value) {
                          form["password"] = value;
                        },
                      ))),
              ElevatedButton(onPressed: createUser, child: Text("Cadastrar"))
            ],
          ),
        ));
  }
}
