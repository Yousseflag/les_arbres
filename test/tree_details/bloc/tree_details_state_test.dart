import 'package:flutter_test/flutter_test.dart';
import 'package:les_arbres/features/tree_details/bloc/tree_details_bloc.dart';

import '../../fixtures/fixtures.dart';

void main() {
  group('TreeDetailsState', () {
    test('it should be able to create a new instance', () {
      final state = TreeDetailsState(tree: tree2);
      expect(state.tree, tree2);
    });

    test('equivalent instances have the same props', () {
      final state1 = TreeDetailsState(tree:
        tree2
      );

      final state2 = TreeDetailsState(tree:
        tree2
      );

      expect(state1, state2);
    });

    test('distinct instances have different props', () {
      final state1 = TreeDetailsState(tree:
        tree2
      );

      final state2 = TreeDetailsState(tree:
        tree1
      );

      expect(state1, isNot(equals(state2)));
    });
  });
}
