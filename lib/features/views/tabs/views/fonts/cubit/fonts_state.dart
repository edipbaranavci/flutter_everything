part of 'fonts_cubit.dart';

class FontsState extends Equatable {
  const FontsState({
    this.textColor = Colors.black,
    this.colorList,
    this.textAlign,
  });

  final Color? textColor;
  final List<Color>? colorList;
  final TextAlign? textAlign;

  @override
  List<Object> get props => [
        colorList ?? [],
        textColor ?? Color,
        textAlign ?? TextAlign,
      ];

  FontsState copyWith({
    Color? textColor,
    List<Color>? colorList,
    TextAlign? textAlign,
  }) {
    return FontsState(
      textColor: textColor ?? this.textColor,
      colorList: colorList ?? this.colorList,
      textAlign: textAlign ?? this.textAlign,
    );
  }
}

class FontsInitial extends FontsState {}
