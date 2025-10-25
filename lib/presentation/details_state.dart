import 'package:exam_app/data/menu_item.dart';

sealed class DetailsState { }

final class DetailsInitial extends DetailsState {}

final class DetailsLoading extends DetailsState {}

final class DetailsLoaded extends DetailsState {
  final MenuItem item;

  DetailsLoaded(this.item);
}

final class DetailsError extends DetailsState {
  final String message;

  DetailsError(this.message);
}
