part of 'circle_bloc.dart';

@immutable
sealed class CircleEvent {}

class AreaOfCircle extends CircleEvent {
  final double radius;

  AreaOfCircle(this.radius);
}
