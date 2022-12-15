

import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';

class PokemonModel extends PokemonEntity{
  PokemonModel(super.name, super.image, super.type);
  
  static PokemonModel fromJson(Map<String, dynamic> json){
    return PokemonModel(json["name"], json["img"], json["type"][0]);
  }
}
