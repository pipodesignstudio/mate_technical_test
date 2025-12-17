import 'package:flutter/material.dart';

class StatusBadgeWidget extends StatelessWidget {
  final bool isOnline;
  const StatusBadgeWidget({super.key, required this.isOnline});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        color: isOnline ? Colors.green : Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
      ),
    );
  }
}