import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex/data/pokemon_details.dart';
import 'package:pokedex/data/pokemon_repo.dart';

class PokemonDetailsCubit extends Cubit<PokemonDetails> {
  final _pokemonRepository = PokemonRepository();
  PokemonDetailsCubit() : super(null);

  void clearPokemonDetails() => emit(null);
}
