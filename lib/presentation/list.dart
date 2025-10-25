import 'package:exam_app/presentation/list_bloc.dart';
import 'package:exam_app/presentation/list_event.dart';
import 'package:exam_app/presentation/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuListWidgetState();
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
      body: BlocBuilder<ListBloc, ListState>(
        builder: (BuildContext context, ListState state) {
          if (state is ListItemsLoaded) {
            return ListView.builder(
              controller: controller,
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text("Todo"));
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
