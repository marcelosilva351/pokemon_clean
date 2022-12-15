// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex_clean/domain/use_cases/implementations/get_all_pokemons_use_case_impl.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';
import 'package:pokedex_clean/external/data_sources/pokemon_data_source_impl.dart';
import 'package:pokedex_clean/infra/repositories/pokemon_repository_impl.dart';

import 'package:pokedex_clean/main.dart';

void main() {
  var useCase = GetAllPokemonsUseCaseImpl(PokemonRepositoryImpl(PokemonDataSourceImpl()));

  test("get pokemons", ()async{
    var result = await useCase.getAllPokemons();
    expect(result.isEmpty, false);
  });
  
  
}
