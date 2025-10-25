abstract class ListState {

}

class ListInitialState extends ListState {

}

class ListItemsLoaded extends ListState {
  List<String> items;

  ListItemsLoaded(this.items);
}