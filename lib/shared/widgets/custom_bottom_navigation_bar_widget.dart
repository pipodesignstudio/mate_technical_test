import 'package:flutter/material.dart';
import 'package:mate_technical_test/models/bottom_navigation_item_model.dart';
import 'package:mate_technical_test/shared/widgets/bottom_navigation_btn_widget.dart';
import 'package:remixicon/remixicon.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationItemModel> items = <BottomNavigationItemModel>[
      BottomNavigationItemModel(
        icon: RemixIcons.group_line,
        isActive: false,
        isHighlighted: false,
      ),
      BottomNavigationItemModel(
        icon: RemixIcons.map_2_line,
        isActive: true,
        isHighlighted: false,
      ),
      BottomNavigationItemModel(
        icon: RemixIcons.add_line,
        isActive: false,
        isHighlighted: true,
      ),
      BottomNavigationItemModel(
        icon: RemixIcons.chat_1_line,
        isActive: false,
        isHighlighted: false,
      ),
      BottomNavigationItemModel(
        icon: RemixIcons.user_line,
        isActive: false,
        isHighlighted: false,
      ),

    ];

    return SafeArea(
      top: false,
      child: Transform.translate(
        offset: const Offset(0, 12),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: items
                .map(
                  (item) => Expanded(
                    child: BottomNavigationBtn(
                      icon: item.icon,
                      isActive: item.isActive,
                      isHighlighted: item.isHighlighted,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
