import 'package:flutter_bloc/flutter_bloc.dart';

class NavCubit extends Cubit<int> {
  // NavCubit() : super(null);
  NavCubit() : super(0);

  void showPokemonDetails(int pokemonId) {
    emit(pokemonId);
  }

  void popToPokedex() {
    // emit(null);
    emit(0);
  }
}
