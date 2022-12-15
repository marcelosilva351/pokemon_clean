import 'package:pokedex_clean/infra/models/pokemon_model.dart';

abstract class PokemonDataSource{
  Future<List<PokemonModel>> getAllPokemonsDataSource();
}