import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fonts_state.dart';

class FontsCubit extends Cubit<FontsState> {
  FontsCubit() : super(FontsInitial()) {
    _init();
  }

  void _init() {
    _setColorList();
  }

  void changeTextAlign(TextAlign? textAlign) =>
      emit(state.copyWith(textAlign: textAlign));

  void changeTextColor(Color color) => emit(state.copyWith(textColor: color));

  void _setColorList() {
    emit(state.copyWith(
      colorList: [
        Colors.black26,
        Colors.black38,
        Colors.black45,
        Colors.black54,
        Colors.black87,
        Colors.black,
        Colors.red,
        Colors.redAccent,
        Colors.pink,
        Colors.pinkAccent,
        Colors.purple,
        Colors.purpleAccent,
        Colors.deepPurple,
        Colors.deepPurpleAccent,
        Colors.indigo,
        Colors.indigoAccent,
        Colors.blue,
        Colors.blueAccent,
        Colors.lightBlue,
        Colors.lightBlueAccent,
        Colors.cyan,
        Colors.cyanAccent,
        Colors.teal,
        Colors.tealAccent,
        Colors.green,
        Colors.greenAccent,
        Colors.lightGreen,
        Colors.lightGreenAccent,
        Colors.lime,
        Colors.limeAccent,
        Colors.yellow,
        Colors.yellowAccent,
        Colors.amber,
        Colors.amberAccent,
        Colors.orange,
        Colors.orangeAccent,
        Colors.deepOrange,
        Colors.deepOrangeAccent,
        Colors.brown,
        Colors.grey,
        Colors.blueGrey,
      ],
    ));
  }
}
