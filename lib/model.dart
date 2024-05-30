class Pokemon {
  String name;

  Pokemon(this.name);

  static Pokemon fromJson(Map<String, dynamic> data){
    final pokemonName = data["name"];
    return Pokemon(pokemonName);
  }
}