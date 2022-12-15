


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex_clean/domain/entities/pokemon_entity.dart';
import 'package:pokedex_clean/domain/repositories/pokemon_repository.dart';
import 'package:pokedex_clean/domain/use_cases/implementations/get_all_pokemons_use_case_impl.dart';
import 'package:pokedex_clean/domain/use_cases/interfaces/get_all_pokemons_use_case.dart';
import 'package:pokedex_clean/external/data_sources/pokemon_data_source_impl.dart';
import 'package:pokedex_clean/infra/models/pokemon_model.dart';
import 'package:pokedex_clean/infra/repositories/pokemon_repository_impl.dart';
import 'package:pokedex_clean/presenter/controllers/pokemon_controller.dart';
import 'package:pokedex_clean/services/pokemon_get_it.dart';

void main() async{
  var getIt = GetIt.instance;
 PokemonGetIt(getIt);
 runApp(MaterialApp(home: MyAPP(),));
}


class MyAPP extends StatelessWidget {
  var controller = GetIt.I.get<PokemonController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,height: double.infinity,child:
       FutureBuilder<List<PokemonEntity>>(future: controller.getAllPokemons(), 
       builder: (context, snapchot){
        if(snapchot.hasError){
          return Center(child: Text("Error"),);
        }
          if(!snapchot.hasData){
          return Center(child: Text("Carregando"),);
        }
        return ListView.builder(
          itemCount: snapchot.data!.length,
          itemBuilder: (context, index){
            return Text(snapchot.data![index].name);
          },
          
        );
       },),
       ),
    );
  }
}
