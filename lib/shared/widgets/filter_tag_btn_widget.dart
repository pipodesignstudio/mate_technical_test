import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class FilterTagBtnWidget extends StatelessWidget {
  const FilterTagBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          foregroundColor: Colors.white,
        ),
        onPressed: () {},
        icon: const Icon(RemixIcons.equalizer_2_line, size: 24),
        label: const Text( 
          '3 active',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
