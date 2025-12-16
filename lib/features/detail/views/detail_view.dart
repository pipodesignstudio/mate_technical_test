import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mate_technical_test/features/detail/widgets/full_semicircle_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/semicircle_painter.dart';
import 'package:mate_technical_test/shared/widgets/event_title_widget.dart';
import 'package:mate_technical_test/shared/widgets/feed_buttons_widget.dart';
import 'package:mate_technical_test/shared/widgets/host_name_widget.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size ss = MediaQuery.of(context).size;
    const String heroTag = 'event-hero-image';

    return ListView(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        SizedBox(
          height: ss.height * 0.6,
          child: Stack(
            children: [
              Center(
                child: Hero(
                  tag: heroTag,
                  child: Transform.translate(
                    offset: const Offset(0, 0),
                    child: Image(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      image: AssetImage('assets/img/bg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: - 40,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 220,
                  child: const FullSemicricle(),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: ss.height * 0.9,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Transform.scale(
                    scale: 1.2,
                    child: const Opacity(
                      opacity: 0.6,
                      child: Image(
                        image: AssetImage('assets/img/bg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 96, sigmaY: 96),
                  child: Container(color: Colors.transparent),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EventTitleWidget(),
                      Row(
                        children: [
                        HostNameWidget()
                      ]),
                    FeedButtonsWidget(  
                      isDetail: true),
                    SizedBox(height: 200),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
