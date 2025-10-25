import 'package:exam_app/data/menu_repo.dart';
import 'package:exam_app/presentation/details_bloc.dart';
import 'package:exam_app/presentation/details_event.dart';
import 'package:exam_app/presentation/details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  final int itemId;
  final MenuRepo menuRepo;

  const DetailsScreen({super.key, required this.itemId, required this.menuRepo});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsBloc(menuRepo)
        ..add(LoadItemDetails(itemId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: BlocBuilder<DetailsBloc, DetailsState>(
          builder: (context, state) {
            if (state is DetailsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DetailsLoaded) {
              final item = state.item;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      item.description,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      'Ingredients:',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 8.0),
                    Wrap(
                      spacing: 8.0,
                      children: item.ingredients
                          .map((ingredient) => Chip(label: Text(ingredient)))
                          .toList(),
                    ),
                  ],
                ),
              );
            } else if (state is DetailsError) {
              return Center(child: Text(state.message));
            } else {
              return const Center(child: Text('No item details found.'));
            }
          },
        ),
      ),
    );
  }
}
