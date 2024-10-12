import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
int teamPointsA=0;
int teamPointsB=0;
  void teamPointsIncrement({required String teamName, required int amountOfIncrease}){

    if(teamName == "A"){
      teamPointsA=teamPointsA+amountOfIncrease;
    }
    else{
      teamPointsB=teamPointsB+amountOfIncrease;
    }
    emit(CounterIncrease());
  }

void resetPoints(){

  teamPointsA=0;
  teamPointsB=0;
  emit(CounterReset());
}
}
