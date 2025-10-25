sealed class DetailsEvent {}

final class LoadItemDetails extends DetailsEvent {
  final int itemId;

  LoadItemDetails(this.itemId);
}
