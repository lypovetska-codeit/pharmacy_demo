import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';

part 'main_nav_state.freezed.dart';

@freezed
class MainNavState with _$MainNavState {
  factory MainNavState({
    required final Queue<MainNavItem> items,
    required final ValueKey key,
  }) = _MainNavState;
}
