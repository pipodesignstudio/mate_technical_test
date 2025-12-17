import 'package:flutter_bloc/flutter_bloc.dart';

class ConfirmAssistanceState {
  const ConfirmAssistanceState({
    required this.hasConfirmedAssistance,
    this.value,
    this.respondedAt,
  });

  final bool hasConfirmedAssistance;
  final bool? value;
  final DateTime? respondedAt;

  ConfirmAssistanceState copyWith({
    bool? hasConfirmedAssistance,
    bool? value,
    DateTime? respondedAt,
  }) {
    return ConfirmAssistanceState(
      hasConfirmedAssistance: hasConfirmedAssistance ?? this.hasConfirmedAssistance,
      value: value ?? this.value,
      respondedAt: respondedAt ?? this.respondedAt,
    );
  }
}

class ConfirmAssistanceCubit extends Cubit<ConfirmAssistanceState> {
  ConfirmAssistanceCubit()
      : super(const ConfirmAssistanceState(hasConfirmedAssistance: false));
  
  // NOTE: no persistance, only for demo purposes

  void accept() {
    emit(
      state.copyWith(
        hasConfirmedAssistance: true,
        value: true,
        respondedAt: DateTime.now(),
      ),
    );
  }

  void reject() {
    emit(
      state.copyWith(
        hasConfirmedAssistance: true,
        value: false,
        respondedAt: DateTime.now(),
      ),
    );
  }
}
