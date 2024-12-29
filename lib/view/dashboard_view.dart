import 'package:assignment2/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBlocView extends StatelessWidget {
  const DashboardBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: [
          //area of vircle
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openCircleBloc(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.calculate, size: 48),
                  Text('Area of Circle'),
                ],
              ),
            ),
          ),
          //simple intrest
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openSiBloc(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.percent, size: 48),
                  Text('Simple Intrese'),
                ],
              ),
            ),
          ),
          //student
          Card(
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openStudentListBloc(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.person, size: 48),
                  Text('Student List'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
