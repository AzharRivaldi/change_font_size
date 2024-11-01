import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double _value = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Change font size example",
                  style: TextStyle(fontSize: _value),
                ),
              ),
              Slider(
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
                max: 100,
                min: 10,
                value: _value,
              )
            ],
          ),
        ),
      ),
    );
  }
}
