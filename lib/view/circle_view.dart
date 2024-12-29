import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:assignment2/bloc/circle_bloc.dart';

class CircleView extends StatelessWidget {
  CircleView({super.key});

  final TextEditingController _radius = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _radius,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter radius",
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final radius = double.tryParse(_radius.text);
                    if (radius != null) {
                      context.read<CircleBloc>().add(AreaOfCircle(radius));
                    }
                  },
                  child: const Text('Calculate Area'),
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<CircleBloc, double>(
                builder: (context, area) {
                  return Text(
                    'Area: ${area.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
