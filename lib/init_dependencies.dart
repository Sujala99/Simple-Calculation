import 'package:assignment2/bloc/circle_bloc.dart';
import 'package:assignment2/bloc/si_bloc.dart';
import 'package:assignment2/bloc/student_list_bloc.dart';
import 'package:assignment2/dashboard.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => CircleBloc());
  serviceLocator.registerLazySingleton(() => SiBloc());
  serviceLocator.registerLazySingleton(() => StudentListBloc());

  serviceLocator.registerLazySingleton<DashboardBloc>(
    () => DashboardBloc(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
