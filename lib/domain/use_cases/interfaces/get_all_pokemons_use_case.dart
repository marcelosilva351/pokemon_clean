

import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';

abstract class GetAllPokemonsUseCase{
  Future<List<PokemonEntity>> getAllPokemons();
}