import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core/extension/string_extensions.dart';
import 'package:les_arbres/features/tree_details/bloc/tree_details_bloc.dart';

class TreeDetailsPage extends StatelessWidget {
  const TreeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TreeDetailsView();
  }
}

class TreeDetailsView extends StatelessWidget {
  const  TreeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final treeName = context.select((TreeDetailsBloc b) => b.state.tree).name ?? '';
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        title: Text(treeName),
      ),
      body: const _Content(),
    );
  }
}


class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Builder(
        builder: (ctx) {
          final tree = ctx.select(
            (TreeDetailsBloc b) => b.state.tree,
          );
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Nom: ${tree.name.stringOrEmptyLabel}',
                        style: textTheme.displaySmall!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Espèce: ${tree.espece.stringOrEmptyLabel}',
                        style: textTheme.displaySmall!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(height: 1),
                      const SizedBox(height: 16),
                      Text(
                        'Hauteur: ${tree.hauteur} m',
                        style: textTheme.bodyMedium!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Circonférence: ${tree.circonfe} cm',
                        style: textTheme.bodyMedium!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Adresse: ${tree.address.stringOrEmptyLabel}',
                        style: textTheme.bodyMedium!.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
