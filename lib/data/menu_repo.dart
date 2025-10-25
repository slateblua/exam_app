abstract interface class MenuRepo {
  Future<List<String>> fetchMenuItems(int page);

  Future<String> fetchItemById(String id);
}

class MenuRepoImpl implements MenuRepo {
  @override
  Future<List<String>> fetchMenuItems(int page) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 3));

    // Generate dummy menu items
    List<String> menuItems = List.generate(
        10, (index) => 'Menu Item ${(page - 1) * 10 + index + 1}');

    return menuItems;
  }

  @override
  Future<String> fetchItemById(String id) {
    return Future.delayed(Duration(seconds: 1), () => 'Menu Item Details for ID: $id');
  }
}