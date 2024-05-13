
import 'package:bloc_test/bloc_test.dart';
import 'package:core/model/data_event.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:les_arbres/features/tree_list/bloc/tree_list_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:domain/use_case/tree_use_case.dart';

import '../../fixtures/fixtures.dart';

class MockTreetUseCase extends Mock implements TreetUseCase {}

void main() {
  late TreeListBloc bloc;
  late TreetUseCase treetUseCase;


  setUp(() {
    treetUseCase = MockTreetUseCase();
    bloc = TreeListBloc(treetUseCase: treetUseCase);
  });

  group('TreeListBloc', () {
    test('initial state is correct', () {
      final initial = bloc.state;
      expect(initial, const TreeListState());
    });
  });

  group('.LoadTreeListEvent', () {
      blocTest<TreeListBloc, TreeListState>(
        'emits loading -> runs UseCase -> emits success with a list',
        build: () => bloc,
        setUp: () {
          when(() => treetUseCase.call(20)).thenAnswer(
            (_) async => Success(treeList1),
          );
        },
        act: (bloc) => bloc..add(LoadTreeList()),
        expect: () => [
          TreeListState(
            status: TreeListStatus.success,
            trees: treeList1,
            exception: null
          ),
        ],
        verify: (_) {
          verify(() => treetUseCase.call(20));
          //verifyNoMoreInteractions(getAllCharacters);
        },
      );
    });
}
