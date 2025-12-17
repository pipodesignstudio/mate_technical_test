import 'package:flutter/material.dart';
import 'package:mate_technical_test/shared/widgets/detail_container_widget.dart';

class EventDescriptionWidget extends StatelessWidget {
  const EventDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DetailContainerWidget(
      height: 200,
      child: _buildDescription(),
    );
  }
}

Widget _buildDescription() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'About the event',
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 6),
      Flexible(
        child: Text(
          'Pariatur cupidatat sunt labore sit exercitation irure anim laborum ut Lorem laboris pariatur sunt velit nostrud. Sit sint tempor ex qui laboris voluptate ea. Laborum elit tempor sit ipsum do aute esse mollit ex occaecat mollit voluptate. Consectetur id do magna pariatur ullamco reprehenderit eu ipsum cillum incididunt sit. Sit laborum enim',
          overflow: TextOverflow.ellipsis,
          maxLines: 6,
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    ]
  );
}