import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/models/index.dart';
import 'package:mate_technical_test/features/detail/widgets/member_avatar_status_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:remixicon/remixicon.dart';

class MembersListItemWidget extends StatelessWidget {
  final MembersListItemModel member;
  final int index;
  const MembersListItemWidget({
    super.key,
    required this.member,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6.0),
      leading: MemberAvatarStatusWidget(index: index),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            member.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              member.role != 'Superhost'
              ? SvgPicture.asset(
                'assets/img/mate_icon.svg',
                width: 16,
                height: 16,
              )
              : Icon(RemixIcons.verified_badge_line, color: Colors.white, size: 16),
              const SizedBox(width: 4),
              Text( member.role, style: const TextStyle(color: Colors.white, fontSize: 14.0)),
            ],
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(255, 255, 255, .2)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.white, width: 1),
                ),
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
            icon: Icon(RemixIcons.send_plane_fill, color: Colors.white)),
           IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.transparent),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.transparent, width: 1),
                ),
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              ),
            ),
            icon: Icon(RemixIcons.more_2_line, color: Colors.white)),
        ],
      ),
    );
  }
}
