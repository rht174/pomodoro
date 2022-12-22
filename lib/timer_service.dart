import 'package:flutter/material.dart';
import 'dart:async';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
}
