import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/models/detail_list_item_model.dart';
import 'package:mate_technical_test/features/detail/widgets/details_list_item_widget.dart';
import 'package:mate_technical_test/shared/widgets/detail_container_widget.dart';
import 'package:remixicon/remixicon.dart';

final List<DetailListItemModel> items = <DetailListItemModel>[
  DetailListItemModel(
    title: 'Price',
    detail: 'Free',
    icon: RemixIcons.money_euro_circle_line,
  ),
  DetailListItemModel(
    title: 'Group Capacity',
    detail: '10',
    icon: RemixIcons.group_line,
  ),
  DetailListItemModel(
    title: 'Location',
    detail: 'On the day of the event',
    icon: RemixIcons.map_pin_line,
  ),
];


class DetailsInfoContainerWidget extends StatelessWidget {
  const DetailsInfoContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailContainerWidget(
      child: _buildContent());
  }
}

Widget _buildContent() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Details',
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      const Text(
        'Sunday 23, 10:15',
        style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 12),
      ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return DetailsListItemWidget(
            title: items[index].title,
            detail: items[index].detail,
            icon: items[index].icon,
          );
        },
      ),
    ],
  );
}
