sealed class ListEvent {

}

final class LoadItems extends ListEvent {

}

final class LoadMoreItems extends ListEvent {

}

final class SearchItems extends ListEvent {
  final String query;

  SearchItems(this.query);
}

final class FilterItemsByCategory extends ListEvent {
  final String category;

  FilterItemsByCategory(this.category);
}

final class ClickMoreDetails extends ListEvent {
  final int itemId;

  ClickMoreDetails(this.itemId);
}

final class MarkItemAsFavorite extends ListEvent {
  final int itemId;

  MarkItemAsFavorite(this.itemId);
}