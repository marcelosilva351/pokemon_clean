



import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';

class PokemonController {

  late GetAllPokemonsUseCase _getAllPokemonsUseCase;

  PokemonController(GetAllPokemonsUseCase getAllPokemonsUseCase){
    _getAllPokemonsUseCase = getAllPokemonsUseCase;
  }


  Future<List<PokemonEntity>> getAllPokemons() async{
    return _getAllPokemonsUseCase.getAllPokemons();
  }


}