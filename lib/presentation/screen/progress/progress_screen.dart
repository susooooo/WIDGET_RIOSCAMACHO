import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress Indicators Screen'),
      ),
      body: _ProgressView(),
    );
      
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      children: const[
        SizedBox(height: 20),
        Text('Progress Indicators Screen'),
        SizedBox(height: 10),
        CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black54),
        SizedBox(height: 10),
        Text('Progress Indicators Controlados'),

        _ControllerProgressIndicator(),

      ],
    ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 100), (value) => 
      (value * 2) / 100).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: snapshot.data ?? 0, strokeWidth: 2, backgroundColor: Colors.black12),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator(value: snapshot.data ?? 0, backgroundColor: Colors.black12),
              ),
            ],
          ),
        );
      },
    );
}
}