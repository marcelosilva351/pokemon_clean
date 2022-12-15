

import 'package:get_it/get_it.dart';
import 'package:pokedex_clean/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_clean/domain/use_cases/implementations/get_all_pokemons_use_case_impl.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';
import 'package:pokedex_clean/external/data_sources/pokemon_data_source_impl.dart';
import 'package:pokedex_clean/infra/data_source/pokemon_data_source.dart';
import 'package:pokedex_clean/infra/repositories/pokemon_repository_impl.dart';
import 'package:pokedex_clean/presenter/controllers/pokemon_controller.dart';

class PokemonGetIt{

  PokemonGetIt(GetIt instance){
  
  //data sources
  instance.registerLazySingleton<PokemonDataSource>(() => PokemonDataSourceImpl());

  //repositories
  instance.registerLazySingleton<PokemonRepository>(() => PokemonRepositoryImpl(instance.get<PokemonDataSource>()));

  //use_cases
  instance.registerLazySingleton<GetAllPokemonsUseCase>(() => GetAllPokemonsUseCaseImpl(instance.get<PokemonRepository>()));

  //controllers
  instance.registerLazySingleton<PokemonController>(() => PokemonController(instance.get<GetAllPokemonsUseCase>()));


  }

}