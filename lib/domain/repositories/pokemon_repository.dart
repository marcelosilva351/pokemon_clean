

import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';

abstract class PokemonRepository{

  Future<List<PokemonEntity>> getAllPokemonsRepository();
}