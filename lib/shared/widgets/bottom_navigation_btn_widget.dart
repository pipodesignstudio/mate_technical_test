import 'package:flutter/material.dart';

class BottomNavigationBtn extends StatelessWidget {
  final bool isHighlighted;
  final bool isActive;
  final IconData icon;

  const BottomNavigationBtn({super.key, required this.isHighlighted, required this.isActive, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            // constraints: const BoxConstraints.tightFor(width: 38, height: 30),
            visualDensity:  VisualDensity(horizontal: -4, vertical: -4),
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 12, vertical: 22)),
              backgroundColor: isHighlighted
                  ? const WidgetStatePropertyAll(Color.fromRGBO(255, 255, 109, 1))
                  : const WidgetStatePropertyAll(Colors.transparent),
            ),
            onPressed: () {},
            icon: Icon(
              icon,
              size: 24,
              color: isActive && !isHighlighted
                  ? Colors.white
                  : isHighlighted
                      ? Colors.black87
                      : Colors.grey[600],
            ),
          )
        ],
      ),
    );
  }
}
