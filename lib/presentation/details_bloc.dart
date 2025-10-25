import 'package:exam_app/data/menu_repo.dart';
import 'package:exam_app/presentation/details_event.dart';
import 'package:exam_app/presentation/details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final MenuRepo repo;

  DetailsBloc(this.repo) : super(DetailsInitial()) {
    on<LoadItemDetails>((event, emit) async {
      emit(DetailsLoading());
      try {
        final item = await repo.fetchItemById(event.itemId.toString());
        emit(DetailsLoaded(item));
      } catch (e) {
        emit(DetailsError('Failed to load item details.'));
      }
    });
  }
}
