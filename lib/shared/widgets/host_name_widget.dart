import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class HostNameWidget extends StatelessWidget {
  const HostNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Hosted by ',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              TextSpan(
                text: 'Léo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                ),
              ),
            ],
          ),
          softWrap: true,
        ),
        SizedBox(width: 6),
        Icon(RemixIcons.verified_badge_line, color: Colors.white),
      ],
    );
  }
}
