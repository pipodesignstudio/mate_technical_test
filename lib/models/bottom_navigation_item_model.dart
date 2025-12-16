import 'package:flutter/material.dart';

class BottomNavigationItemModel {
  final IconData icon;
  final bool isActive;
  final bool isHighlighted;
  const BottomNavigationItemModel({
    required this.icon,
    required this.isActive,
    required this.isHighlighted,
  });
}
