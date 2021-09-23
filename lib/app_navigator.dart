import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/bloc/nav_cubit.dart';
import 'package:pokedex/pokedex_view.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, int>(builder: (context, pokemomId) {
      return Navigator(
        pages: [
          MaterialPage(child: PokedexView()),
          if (pokemomId != null) MaterialPage(child: Text(pokemomId.toString()))
        ],
        onPopPage: (route, result) {
          BlocProvider.of<NavCubit>(context).popToPokedex();
          return route.didPop(result);
        },
      );
    });
  }
}
