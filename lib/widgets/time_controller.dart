import 'package:flutter/material.dart';

class TimeController extends StatelessWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration:
          const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: const Center(
        child: IconButton(
          icon: Icon(Icons.pause),
          color: Colors.white,
          iconSize: 55,
          onPressed: null,
        ),
      ),
    );
  }
}
