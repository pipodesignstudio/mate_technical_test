import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class DetailsListItemWidget extends StatelessWidget {
  final String title;
  final String detail;
  final IconData icon;

  const DetailsListItemWidget({super.key, required this.title, required this.detail, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 4.0),
      minTileHeight: 24,
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            detail,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          const SizedBox(width: 6),
          const Icon(RemixIcons.arrow_right_s_line, color: Colors.white),
        ],
      ),
    );
  }
}
