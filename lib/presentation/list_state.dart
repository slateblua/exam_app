import '../data/menu_item.dart';

abstract class ListState {

}

class ListInitialState extends ListState {

}

class ListItemsLoaded extends ListState {
  List<MenuItem> items;

  ListItemsLoaded(this.items);
}