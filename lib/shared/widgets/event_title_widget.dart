import 'package:flutter/material.dart';

class EventTitleWidget extends StatelessWidget {
  const EventTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        softWrap: true,
        textAlign: TextAlign.center,
        'Hicking alongside seacoast in costabrava',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
