import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mate_technical_test/features/detail/cubits/confirm_assistance_cubit.dart';
import 'package:mate_technical_test/shared/widgets/detail_container_widget.dart';
import 'package:remixicon/remixicon.dart';

class ConfirmAssitanceBoxWidget extends StatelessWidget {
  const ConfirmAssitanceBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfirmAssistanceCubit, ConfirmAssistanceState>(
      builder: (BuildContext context, ConfirmAssistanceState state) {
        final double height = state.hasConfirmedAssistance ? 70 : 100;

        if (state.hasConfirmedAssistance) {
          final String timeLabel =
              state.respondedAt != null ? _formatTime(state.respondedAt!) : '--:--';
          final String action = state.value == true ? 'accepted' : 'rejected';

          return DetailContainerWidget(
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'You $action this event at $timeLabel',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }

        return DetailContainerWidget(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Confirm your attendance',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Row(
                children: <Widget>[
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(255, 255, 255, .2)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Colors.grey, width: 1),
                        ),
                      ),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                    ),
                    onPressed: () => context.read<ConfirmAssistanceCubit>().reject(),
                    icon: const Icon(RemixIcons.close_line, size: 24, color: Colors.white),
                    label: const Text(
                      'Not going',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Spacer(),
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: const WidgetStatePropertyAll(Color.fromRGBO(161, 236, 6, 1)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(color: Color.fromRGBO(55, 80, 2, 1), width: 1),
                        ),
                      ),
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      ),
                    ),
                    onPressed: () => context.read<ConfirmAssistanceCubit>().accept(),
                    icon: const Icon(RemixIcons.check_line, size: 24, color: Color.fromRGBO(55, 80, 2, 1)),
                    label: const Text(
                      'Going',
                      style: TextStyle(color: Color.fromRGBO(55, 80, 2, 1), fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatTime(DateTime dateTime) {
    final TimeOfDay timeOfDay = TimeOfDay.fromDateTime(dateTime);
    final String hour = timeOfDay.hourOfPeriod.toString().padLeft(2, '0');
    final String minute = timeOfDay.minute.toString().padLeft(2, '0');
    final String period = timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';

    return '$hour:$minute $period';
  }
}
