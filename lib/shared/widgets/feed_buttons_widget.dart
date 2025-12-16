import 'package:flutter/material.dart';
import 'package:mate_technical_test/router/basic_routes.dart';
import 'package:remixicon/remixicon.dart';

class FeedButtonsWidget extends StatelessWidget {
  final bool isDetail;
  const FeedButtonsWidget({super.key, this.isDetail = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black54),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              ),
            ),
            icon: Icon(RemixIcons.heart_line, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 8),
          IconButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black54),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.grey, width: 1),
                ),
              ),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 22, vertical: 12),
              ),
            ),
            icon: Icon(RemixIcons.share_2_line, color: Colors.white, size: 24),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextButton.icon(
              onPressed: () {
                if (!isDetail) {
                  Navigator.of(context).pushNamed(BasicRoutes.details);
                }
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: const BorderSide(color: Colors.white, width: 3),
                  ),
                ),
                padding: const WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                ),
              ),
              label:   Icon(
                !isDetail ? RemixIcons.eye_line :
                RemixIcons.chat_1_line,
                color: Colors.black,
                size: 24,
              ),
              icon: Text( !isDetail ? 'Discover' : 'Group Chat', style: const TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      ),
    );
  }
}
