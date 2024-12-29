import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'circle_event.dart';

class CircleBloc extends Bloc<CircleEvent, double> {
  CircleBloc() : super(0.0) {
    on<AreaOfCircle>((event, emit) {
      final area = event.radius * event.radius * (22 / 7);
      emit(area);
    });
  }
}
