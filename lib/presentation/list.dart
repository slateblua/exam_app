import 'package:exam_app/data/menu_repo.dart';
import 'package:exam_app/presentation/details.dart';
import 'package:exam_app/presentation/list_bloc.dart';
import 'package:exam_app/presentation/list_event.dart';
import 'package:exam_app/presentation/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/menu_item.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuListWidgetState();
  }
}

class MenuItemWidget extends StatelessWidget {
  final MenuItem item;

  const MenuItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Text(item.title),
        subtitle: Text('Description: ${item.description}'),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              // no dependency injection used here for simplicity
              builder: (context) => DetailsScreen(itemId: item.id, menuRepo: MenuRepoImpl()),
            ),
          );
        },
      ),
    );
  }
}


class MenuListWidgetState extends State<MenuListWidget> {
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    context.read<ListBloc>().add(LoadItems());

    controller.addListener(() {
      if (controller.position.pixels >= controller.position.maxScrollExtent) {
        context.read<ListBloc>().add(LoadMoreItems());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Items')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (query) {
                // Implement lazy search later
                context.read<ListBloc>().add(SearchItems(query));
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Wrap(
            spacing: 8.0,
            children: MenuCategory.values
                .map((category) => ActionChip(
                    label: Text(category.name),
                    onPressed: () {
                      // Implement category filtering later
                    }))
                .toList(),
          ),
          Expanded(
            child: BlocBuilder<ListBloc, ListState>(
              builder: (BuildContext context, ListState state) {
                if (state is ListItemsLoaded) {
                  return ListView.builder(
                    controller: controller,
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      return MenuItemWidget(item: state.items[index]);
                    },
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
    );
  }
}
