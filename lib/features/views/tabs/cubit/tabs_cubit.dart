import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_everything/features/models/tabs/tab_model.dart';

part 'tabs_state.dart';

class TabsCubit extends Cubit<TabsState> {
  TabsCubit() : super(TabsInitial()) {
    _init();
  }

  void _init() {
    _setTabList();
  }

  void _setTabList() {
    emit(state.copyWith(
        tabModelList: List.generate(
      20,
      (index) => TabModel(Icons.abc, 'Mekanizma - ${index + 1}'),
    )));
  }
}
