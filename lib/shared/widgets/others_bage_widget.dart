import 'package:flutter/material.dart';

class OthersBadgeWidget extends StatelessWidget {
  const OthersBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 96, maxHeight: 24),
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        '+21 other',
        style: TextStyle(color: Colors.black54, fontSize: 14.0),
      ),
    );
  }
}
