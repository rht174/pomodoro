import 'package:flutter/material.dart';
import 'package:pomodoro/timer_service.dart';
import 'package:pomodoro/widgets/progress_widget.dart';
import 'package:pomodoro/widgets/time_controller.dart';
import 'package:pomodoro/widgets/time_options.dart';
import 'package:pomodoro/widgets/timer_card.dart';
import 'package:provider/provider.dart';
import 'utils.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);

    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          'POMOTIMER',
          style: textStyle(25, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: Provider.of<TimerService>(context, listen: false).reset,
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: const [
              SizedBox(
                height: 25,
              ),
              TimerCard(),
              SizedBox(
                height: 50,
              ),
              TimeOptions(),
              SizedBox(
                height: 50,
              ),
              TimeController(),
              SizedBox(
                height: 50,
              ),
              ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
