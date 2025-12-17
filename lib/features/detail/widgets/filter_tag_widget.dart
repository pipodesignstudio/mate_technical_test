import 'package:flutter/material.dart';

class FilterTagWidget extends StatelessWidget {
  final String label;
  final bool isHighLighted;
  const FilterTagWidget({
    super.key,
    required this.label,
    required this.isHighLighted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      margin: const EdgeInsets.only(right: 8.0),
      constraints: BoxConstraints(minWidth: 72, minHeight: 32),
      decoration: BoxDecoration(
        color: isHighLighted
            ? Color.fromRGBO(255, 251, 36, 1)
            : Color.fromRGBO(255, 255, 255, .2),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        label,
        style: 
        isHighLighted ? 
        const TextStyle(color: Colors.black87, fontSize: 16.0) :
        const TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }
}
