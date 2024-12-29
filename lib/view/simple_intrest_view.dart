import 'package:assignment2/bloc/si_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterest extends StatelessWidget {
  SimpleInterest({super.key});

  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Principal Input
              TextField(
                controller: _principalController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Principal Amount",
                ),
              ),
              const SizedBox(height: 16),

              // Time Input
              TextField(
                controller: _timeController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Time in Years",
                ),
              ),
              const SizedBox(height: 16),

              // Rate Input
              TextField(
                controller: _rateController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Rate of Interest (%)",
                ),
              ),
              const SizedBox(height: 16),

              // Calculate Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final principal =
                        double.tryParse(_principalController.text) ?? 0.0;
                    final time = double.tryParse(_timeController.text) ?? 0.0;
                    final rate = double.tryParse(_rateController.text) ?? 0.0;

                    context
                        .read<SiBloc>()
                        .add(Simpleinterest(principal, time, rate));
                  },
                  child: const Text('Calculate Simple Interest'),
                ),
              ),
              const SizedBox(height: 16),

              // Display Result
              BlocBuilder<SiBloc, double>(
                builder: (context, state) {
                  return Text(
                    'Simple Interest: ${state.toStringAsFixed(2)}',
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
