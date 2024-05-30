import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:petshop/model.dart';

final url = Uri.parse("https://pokeapi.co/api/v2/pokemon");

Future<List<Pokemon>> getPokemon() async {

  final response = await http.get(url);
  final decode = jsonDecode(response.body);
  List<dynamic> pokemonList = decode["results"];
  return pokemonList.map((e) => Pokemon.fromJson(e)).toList();
  
  
}
