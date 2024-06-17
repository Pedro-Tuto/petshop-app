import 'package:flutter/material.dart';
import 'package:petshop/pages/home_page.dart';
import 'package:petshop/pages/user_create_page.dart';
import 'package:petshop/pages/user_info_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),

      title: 'Petshop App',
      home: const HomePage(),

      routes: {
        "/user-info": (context) => const UserInfoPage(),
        "/user-create": (context) => const UserCreatePage(),
      },
    );
  }
}