import 'package:flutter_test/flutter_test.dart';
import 'package:les_arbres/features/tree_details/bloc/tree_details_bloc.dart';

import '../../fixtures/fixtures.dart';

void main() {
  group('TreeDetailsBloc', () {
    test('initial state is correct', () {

      final expected = TreeDetailsState(tree: tree1);
      final initial = TreeDetailsBloc(tree: tree1).state;
      expect(initial, expected);
    });
  });
}
