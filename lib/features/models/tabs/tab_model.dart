import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TabModel extends Equatable {
  final IconData icon;
  final String title;
  final Widget page;
  const TabModel(this.icon, this.title, this.page);

  @override
  List<Object?> get props => [icon, title, page];
}
