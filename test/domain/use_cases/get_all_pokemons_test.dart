



import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';
import 'package:pokedex_clean/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_clean/domain/use_cases/implementations/get_all_pokemons_use_case_impl.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';
import 'package:pokedex_clean/external/data_sources/pokemon_data_source_impl.dart';
import 'package:pokedex_clean/infra/repositories/pokemon_repository_impl.dart';

void main(){

  GetAllPokemonsUseCase getAllPokemonsUseCaseMock = GetAllPokemonsUseCaseImpl(pokemonRepositoryMock());
  GetAllPokemonsUseCase getAllPokemonsUseCase = GetAllPokemonsUseCaseImpl(PokemonRepositoryImpl(PokemonDataSourceImpl()));

  test("test use case", ()async{
   var result = await getAllPokemonsUseCase.getAllPokemons();
   expect(result.isEmpty, true);
  });
}


class pokemonRepositoryMock implements PokemonRepository{
  @override
  Future<List<PokemonEntity>> getAllPokemonsRepository()async {
    List<PokemonEntity> list = [];
    return list;
  }
  
}