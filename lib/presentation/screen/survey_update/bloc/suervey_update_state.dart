part of 'suervey_update_bloc.dart';



@freezed
class SuerveyUpdateState with _$SuerveyUpdateState {
  factory SuerveyUpdateState({
    required String msg,
    required LoadingState isLoadingState,
  }) = _SuerveyUpdateState;

  factory SuerveyUpdateState.initial() =>
      SuerveyUpdateState(msg: '', isLoadingState: LoadingState.IDLE);
}
