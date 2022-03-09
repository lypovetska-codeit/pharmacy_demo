import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pharmacy/ui/navigation/main_nav_item.dart';

part 'main_nav_event.freezed.dart';

@freezed
class MainNavEvent with _$MainNavEvent {
  factory MainNavEvent.navigateToPage(MainNavItem mainNavItem) = NavigateToPage;

  factory MainNavEvent.navigateBack() = NavigateBack;
}
