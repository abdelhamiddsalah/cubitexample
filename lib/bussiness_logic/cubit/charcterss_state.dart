part of 'charcterss_cubit.dart';

@immutable
sealed class CharcterssState {}

final class CharcterssInitial extends CharcterssState {}
final class CharcterssLoading extends CharcterssState {}
final class CharcterssLoaded extends CharcterssState {
  final List<Character> character;

  CharcterssLoaded({required this.character});
}
final class CharcterssFailure extends CharcterssState {
  final String error;

  CharcterssFailure({required this.error});

}