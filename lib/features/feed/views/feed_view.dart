import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/feed/widgets/feed_main_info_widget.dart';
import 'package:mate_technical_test/features/feed/widgets/feed_social_info_widget.dart';
import 'package:mate_technical_test/shared/widgets/feed_buttons_widget.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.of(context).size;
    const String heroTag = 'event-hero-image';

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: <Widget>[
         Positioned.fill(
          child: Hero(
            tag: heroTag,
            child: Transform.scale(
              scale: 1.05,
              child: Image(
                image: AssetImage('assets/img/bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: ss.height * .45,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(27, 27, 27, 1),
                  Color.fromRGBO(0, 0, 0, 0),
                ]),
            ),
            child: Column(
              children: const [
              FeedMainWidget(),
              FeedSocialInfoWidget(),
              FeedButtonsWidget()
            ]),
          ),
        ),
      ], 
    );
  }
}
