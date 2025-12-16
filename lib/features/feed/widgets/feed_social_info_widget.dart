import 'package:flutter/material.dart';
import 'package:mate_technical_test/shared/widgets/index.dart';
import 'package:remixicon/remixicon.dart';
import 'package:mate_technical_test/shared/widgets/avatar_widget.dart';

class FeedSocialInfoWidget extends StatelessWidget {
  const FeedSocialInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 36.0 * 1.5, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Flexible(
                      child: Text.rich(
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
                    ),
                    SizedBox(width: 6),
                    Icon(RemixIcons.verified_badge_line, color: Colors.white),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Container(
                margin: EdgeInsets.only(right: 36.0 * 1.5),
                height: 36,
                width: 64,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      child: AvatarWidget(
                        index: 0,
                        size: 32,
                        hasBorder: true,
                        hasNoise: true,
                      ),
                    ),
                    Positioned(
                      left: 24,
                      child: AvatarWidget(
                        index: 1,
                        size: 32,
                        hasBorder: true,
                        hasNoise: true,
                      ),
                    ),
                    Positioned(
                      left:48,
                      child: AvatarWidget(
                        index: 2,
                        size: 32,
                        hasBorder: true,
                        hasNoise: true,
                      ),
                    ),
                    Positioned(
                      left: 72,
                      bottom: 5,
                      child: OthersBadgeWidget()
                    )
                  ],
                ),
              ),
              const SizedBox(width: 12),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: <Widget>[
              Row(
                children: const [
                  Icon(RemixIcons.calendar_line, color: Colors.white, size: 20),
                  SizedBox(width: 4),
                  Text(
                    '13 April, 19:00',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Row(
                children: const [
                  Icon(RemixIcons.map_pin_line, color: Colors.white, size: 20),
                  SizedBox(width: 4),
                  Text(
                    '3 KM',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Row(
                children: const [
                  Icon(
                    RemixIcons.price_tag_3_line,
                    color: Color.fromRGBO(146, 214, 5, 1),
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '35,50 €',
                    style: TextStyle(
                      color: Color.fromRGBO(146, 214, 5, 1),
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
