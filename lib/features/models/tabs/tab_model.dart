import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TabModel extends Equatable {
  final IconData icon;
  final String title;
  const TabModel(this.icon, this.title);

  @override
  List<Object?> get props => [icon, title];
}
