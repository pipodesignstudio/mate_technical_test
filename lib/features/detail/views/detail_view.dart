import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mate_technical_test/features/detail/cubits/confirm_assistance_cubit.dart';
import 'package:mate_technical_test/features/detail/widgets/confirm_assitance_box_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/details_info_container_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/event_description_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/full_semicircle_widget.dart';
import 'package:mate_technical_test/features/detail/widgets/members_detail_widget.dart';
import 'package:mate_technical_test/shared/widgets/event_title_widget.dart';
import 'package:mate_technical_test/shared/widgets/feed_buttons_widget.dart';
import 'package:mate_technical_test/shared/widgets/host_name_widget.dart';
import 'package:mate_technical_test/shared/widgets/page_tag_widget.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size ss = MediaQuery.of(context).size;
    const String heroTag = 'event-hero-image';
    final double heroSectionHeight = ss.height * 0.5;
    final double heroImageHeight = heroSectionHeight * 1.35;
    final double heroVerticalOffset = -heroSectionHeight * 0.05;

    return ListView(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      children: <Widget>[
        SizedBox(
          height: heroSectionHeight,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Center(
                child: Hero(
                  tag: heroTag,
                  child: OverflowBox(
                    alignment: Alignment.center,
                    minHeight: heroImageHeight,
                    maxHeight: heroImageHeight,
                    child: Transform.translate(
                      offset: Offset(0, heroVerticalOffset),
                      child: Image(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        height: heroImageHeight,
                        image: AssetImage('assets/img/bg.png'),
                        fit: BoxFit.cover,
                      ),
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
          height: ss.height * 1.5,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: const Opacity(
                  opacity: 0.6,
                  child: Image(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/img/bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 96, sigmaY: 96),
                    child: Container(color: Colors.transparent),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Transform.translate(
                      offset: Offset(0, -40),
                      child: BlocProvider(
                        create: (_) => ConfirmAssistanceCubit(),
                        child: const ConfirmAssitanceBoxWidget(),
                      )),
                    EventTitleWidget(),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 8),
                        child: Row(
                          children: [
                          PageTagWidget(title: 'Hicking'),
                          const Spacer(),
                          HostNameWidget()
                        ]),
                      ),
                    EventDescriptionWidget(),
                    DetailsInfoContainerWidget(),
                    MembersDetailWidget(),
                    FeedButtonsWidget(  
                      isDetail: true),
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
