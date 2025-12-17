import 'package:flutter/material.dart';
import 'package:mate_technical_test/router/basic_routes.dart';
import 'package:mate_technical_test/shared/widgets/index.dart';
import 'package:remixicon/remixicon.dart';


// lib/shared/widgets/custom_appbar_widget.dart
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool detailedView;
  const CustomAppBar({super.key, required this.detailedView});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leadingWidth: detailedView ? null : 132, // If don't adjust the width, the title will be overflowed
      leading: detailedView
          ? IconButton(
              icon: const Icon(RemixIcons.arrow_left_s_line, color: Colors.white),
              onPressed: () => Navigator.pushNamed(context, BasicRoutes.feed),
            )
          : FilterTagBtnWidget(),
      centerTitle: true,
      title: detailedView
          ? null
          : PageTagWidget(title: 'Hicking'),
      actions:  [
        IconButton(onPressed: () {}, icon: Icon(RemixIcons.feedback_line, color: Colors.white,))
      ],
    );
  }


  // HACK: I needed to include this override to avoid the error using my custom TopBar
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
