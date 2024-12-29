import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'si_event.dart';

class SiBloc extends Bloc<SiEvent, double> {
  SiBloc() : super(0.0) {
    on<Simpleinterest>((event, emit) {
      final interest = (event.principal * event.time * event.rate) / 100;
      emit(interest);
    });
  }
}
