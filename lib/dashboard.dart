import 'package:assignment2/bloc/circle_bloc.dart';
import 'package:assignment2/bloc/si_bloc.dart';
import 'package:assignment2/bloc/student_list_bloc.dart';
import 'package:assignment2/view/circle_view.dart';
import 'package:assignment2/view/simple_intrest_view.dart';
import 'package:assignment2/view/student_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
    this._circleBloc,
    this._siBloc,
    this._studentListBloc,
  ) : super(null);

  final CircleBloc _circleBloc;
  final SiBloc _siBloc;
  final StudentListBloc _studentListBloc;

  void openCircleBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _circleBloc,
          child: CircleView(),
        ),
      ),
    );
  }

  void openSiBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _siBloc,
          child: SimpleInterest(),
        ),
      ),
    );
  }

  void openStudentListBloc(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentListBloc,
          child: StudentListBlocView(),
        ),
      ),
    );
  }
}
