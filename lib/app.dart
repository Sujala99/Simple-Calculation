import 'package:assignment2/dashboard.dart';
import 'package:assignment2/init_dependencies.dart';
import 'package:assignment2/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 2',
      home: BlocProvider.value(
        value: serviceLocator<DashboardBloc>(),
        child: DashboardBlocView(),
      ),
    );
  }
}
