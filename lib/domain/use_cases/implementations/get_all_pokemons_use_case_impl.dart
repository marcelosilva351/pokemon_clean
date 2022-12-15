


import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';
import 'package:pokedex_clean/domain/erros/get_all_pokemons_erros.dart';
import 'package:pokedex_clean/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';

class GetAllPokemonsUseCaseImpl implements GetAllPokemonsUseCase{

  late PokemonRepository _pokemonRepository;
  
  GetAllPokemonsUseCaseImpl(PokemonRepository pokemonRepository){
    _pokemonRepository = pokemonRepository;
  }

  @override
  Future<List<PokemonEntity>> getAllPokemons() async{
   try {
     return _pokemonRepository.getAllPokemonsRepository();
   }on GetAllPokemonsError catch (e) {
     throw GetAllPokemonsError(e.message);
   }catch(e){
    throw Exception();
   }
  }


  
}