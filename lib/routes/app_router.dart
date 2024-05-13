import 'package:domain/model/tree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:les_arbres/features/tree_details/bloc/tree_details_bloc.dart';
import 'package:les_arbres/features/tree_details/view/tree_details_page.dart';
import 'package:les_arbres/features/tree_list/view/trees_page.dart';

class AppRouter {
    
    static final GoRouter router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: RoutesName.home.name,
          builder: (BuildContext context, GoRouterState state) {
            return const TreesPage();
          },
          routes: <RouteBase>[
        GoRoute(
          path: RoutesName.details.name,
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider(
                      create: (_) => TreeDetailsBloc(tree: state.extra as Tree),
                      child: const TreeDetailsPage(),
                    );
          },
        ),
          ],
        ),
      ],
    );
}

enum RoutesName {
  home,
  details;
  
  get goName => '/$name';
}
