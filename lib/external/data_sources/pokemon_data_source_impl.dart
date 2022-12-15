

import 'dart:convert';

import 'package:pokedex_clean/domain/erros/get_all_pokemons_erros.dart';
import 'package:pokedex_clean/infra/data_source/pokemon_data_source.dart';
import 'package:pokedex_clean/infra/models/pokemon_model.dart';
import 'package:http/http.dart' as http;
class PokemonDataSourceImpl implements PokemonDataSource{
  @override
  Future<List<PokemonModel>> getAllPokemonsDataSource() async{  

    try {
      List<PokemonModel> pokemons = [];
      var response = await http.get(Uri.parse("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json"), headers: {
    'Content-type': 'application/json; charset=UTF-8',
  },);
      if(response.statusCode == 200){
        var decode = jsonDecode(response.body);
        for(var pokemon in decode["pokemon"]){
          var pokemonAdd = PokemonModel.fromJson(pokemon);
          pokemons.add(pokemonAdd);
        }
        return pokemons;
      }
    throw GetAllPokemonsError("Ocorreu um erro ao buscar os pokemons");
      
    }catch(e){
      throw Exception();
    }


   
  }
  
}