import 'package:exam_app/data/menu_item.dart';
import 'package:exam_app/data/menu_repo.dart';
import 'package:exam_app/presentation/list_event.dart';
import 'package:exam_app/presentation/list_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  int page = 0;
  final MenuRepoImpl repo;

  ListBloc(this.repo) : super(ListInitialState()) {
    List<MenuItem> items = [];

    on<LoadItems>((event, emit) async {
      page = 0;
      final fetchedItems = await repo.fetchMenuItems(page);

      items = fetchedItems;

      if (!emit.isDone) {
        emit(ListItemsLoaded(items));
      }
    });

    on<LoadMoreItems>((event, emit) async {
      page++;
      final fetchedItems = await repo.fetchMenuItems(page);

      items.addAll(fetchedItems);

      if (!emit.isDone) {
        emit(ListItemsLoaded(items));
      }
    });
  }
}