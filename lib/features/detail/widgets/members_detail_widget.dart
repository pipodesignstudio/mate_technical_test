import 'package:flutter/material.dart';
import 'package:mate_technical_test/data/avatar_data.dart';
import 'package:mate_technical_test/features/detail/models/members_list_item_model.dart';
import 'package:mate_technical_test/features/detail/widgets/filter_tag_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/members_list_item_widget.dart';
import 'package:mate_technical_test/shared/widgets/detail_container_widget.dart';
import 'package:mate_technical_test/shared/widgets/index.dart';
import 'package:remixicon/remixicon.dart';

final List<FilterTagWidget> tags = <FilterTagWidget>[
  FilterTagWidget(label: 'Joining', isHighLighted: true),
  FilterTagWidget(label: 'Maybee', isHighLighted: false),
  FilterTagWidget(label: 'Not joining', isHighLighted: false),
];

final List<MembersListItemModel> members = <MembersListItemModel>[
  MembersListItemModel(
    name: 'Laura',
    image: avatarImagesPaths[0],
    role: 'Superhost',
  ),
  MembersListItemModel(
    name: 'Edouard',
    image: avatarImagesPaths[1],
    role: 'Embassador',
  ),
  MembersListItemModel(
    name: 'Jake',
    image: avatarImagesPaths[2],
    role: 'Embassador',
  ),
];

class MembersDetailWidget extends StatelessWidget {
  const MembersDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailContainerWidget(child: _buildContent());
  }
}

Widget _buildContent() {
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          const Text(
            'Members',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          PageTagWidget(title: '4 on 42'),
        ],
      ),
      const SizedBox(height: 12),
      Row(children: <Widget>[for (FilterTagWidget tag in tags) tag]),
      const SizedBox(height: 12),
      ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) =>
            MembersListItemWidget(member: members[index], index: index),
        itemCount: members.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
      ),
      const SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton.icon(
            onPressed: () {},
            label: const Icon(
              RemixIcons.arrow_right_s_line,
              color: Colors.white,
            ),
            icon: const Text(
              'view the full list',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ],
  );
}
