

import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';

abstract class GetPokemonByNameUseCase{
  Future<PokemonEntity> getPokemonByName(String name);
}