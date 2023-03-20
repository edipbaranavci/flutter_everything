part of 'tabs_cubit.dart';

class TabsState extends Equatable {
  const TabsState({this.tabModelList});

  final List<TabModel>? tabModelList;

  @override
  List<Object> get props => [tabModelList ?? []];

  TabsState copyWith({
    List<TabModel>? tabModelList,
  }) {
    return TabsState(
      tabModelList: tabModelList ?? this.tabModelList,
    );
  }
}

class TabsInitial extends TabsState {}
