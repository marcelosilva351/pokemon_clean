


import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';
import 'package:pokedex_clean/domain/erros/get_all_pokemons_erros.dart';
import 'package:pokedex_clean/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_clean/infra/data_source/pokemon_data_source.dart';
import 'package:pokedex_clean/infra/models/pokemon_model.dart';

class PokemonRepositoryImpl implements PokemonRepository{

  late PokemonDataSource _pokemonDataSource;

  PokemonRepositoryImpl(PokemonDataSource pokemonDataSource){
    _pokemonDataSource = pokemonDataSource;
  }


  @override
  Future<List<PokemonEntity>> getAllPokemonsRepository() async{
    try {
    List<PokemonEntity> pokemons = await _pokemonDataSource.getAllPokemonsDataSource();
   
    return pokemons;


    }on GetAllPokemonsError catch (e) {
      throw GetAllPokemonsError(e.message);
  
  }catch(e){
    throw Exception();
  }
  
  }}