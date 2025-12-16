import 'package:flutter/material.dart';
import 'package:mate_technical_test/shared/widgets/event_title_widget.dart';
import 'package:remixicon/remixicon.dart';
import 'dart:ui';

class FeedMainWidget extends StatelessWidget {
  const FeedMainWidget({super.key});
  final double height = 150;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: height),
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 8.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0),
                      Color.fromRGBO(255, 255, 255, .1),
                      Color.fromRGBO(255, 255, 255, .25),
                      Color.fromRGBO(255, 255, 255, .4),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                height: height * .95,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Color.fromRGBO(255, 255, 255, .01),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const <Widget>[
                          EventTitleWidget()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(RemixIcons.chat_private_fill, color: Colors.white),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    'Event by request, you need to request access',
                    style: TextStyle(color: Colors.white),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
