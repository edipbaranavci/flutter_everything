import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_everything/features/models/tabs/tab_model.dart';
import 'package:flutter_everything/features/views/tabs/views/fonts/view/fonts_view.dart';

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
      tabModelList: [
        const TabModel(
          Icons.abc,
          'Fontlar',
          FontsView(
            url:
                'https://github.com/edipbaranavci/flutter_everything/blob/main/lib/features/views/tabs/views/fonts/view/fonts_view.dart',
          ),
        ),
      ],
    ));
  }
}
