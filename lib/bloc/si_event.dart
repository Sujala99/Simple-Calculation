part of 'si_bloc.dart';

@immutable
sealed class SiEvent {}

class Simpleinterest extends SiEvent {
  final double principal;
  final double time;
  final double rate;

  Simpleinterest(this.principal, this.time, this.rate);
}
