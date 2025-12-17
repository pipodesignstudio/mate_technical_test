import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/status_badge_widget.dart';
import 'package:mate_technical_test/shared/widgets/avatar_widget.dart';

class MemberAvatarStatusWidget extends StatelessWidget {
  final int index;


  const MemberAvatarStatusWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 64,
      width:  64,
      child: Stack(
        children: <Widget>[
          Center(
            child: AvatarWidget(index: index, size: 58, hasBorder: false),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: StatusBadgeWidget(isOnline: index != 0))
        ],
      ),
    );
  }
}