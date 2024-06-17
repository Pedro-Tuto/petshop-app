import 'package:flutter/material.dart';
import 'package:petshop/widgets/header_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return Scaffold(
      backgroundColor: Colors.white,

      //ListViwe
      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          // MAIN
          HeaderDesktop(),
          //HeaderMobile(),

          Container(
          margin: const EdgeInsets.symmetric(horizontal: 20,),
          height: screenSize.height/1.2,
          constraints: const BoxConstraints(maxHeight: 400),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Ajudem a salvar os pets do", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("Rio Grande do Sul", style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),),
                  ElevatedButton(onPressed: (){}, child: Text("AJUDAR"),),
                ],
              ),
              Image.asset("assets/PetBanner.png",
                width: screenWidth/2,
              )
            ],
          ),),

          //MAIN 02
          Container(
            height: 400,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),

          //MAIN 03
          Container(
            height: 500,
            width: double.maxFinite,
          ),

          //MAIN 04
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}