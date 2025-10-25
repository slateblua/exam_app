import 'package:exam_app/data/fake_data.dart';
import 'package:exam_app/data/menu_item.dart';
import 'dart:math';

abstract interface class MenuRepo {
  Future<List<MenuItem>> fetchMenuItems(int page);

  Future<MenuItem> fetchItemById(String id);
}

class MenuRepoImpl implements MenuRepo {
  @override
  Future<List<MenuItem>> fetchMenuItems(int page) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 1));

    final int start = page * 5;
    final int end = min((page + 1) * 5, FakeData.menuItems.length);

    // Generate dummy menu items
    List<MenuItem> menuItems = start >= end ? [] : FakeData.menuItems.getRange(start, end).toList();

    return menuItems;
  }

  @override
  Future<MenuItem> fetchItemById(String id) {
    return Future.delayed(Duration(seconds: 1), () {
      return FakeData.menuItems.firstWhere((item) => item.id.toString() == id);
    });
  }
}