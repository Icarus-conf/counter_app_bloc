import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncreamentState());

  int teamA = 0;
  int teamB = 0;
  SharedPreferences? sharedPreferences;

  teamAIncreament(int btnNumber) {
    teamA += btnNumber;

    emit(CounterIncreamentState());
  }

  teamBIncreament(int btnNumber) {
    teamB += btnNumber;

    emit(CounterIncreamentState());
  }

  reset() {
    teamA = 0;
    teamB = 0;
    emit(CounterIncreamentState());
  }
}
