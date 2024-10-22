import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_dropdown_expanded.g.dart';

@riverpod  
class IsDropdownExpanded extends _$IsDropdownExpanded {
  @override
  bool build() => false;

  void toggle() {
    state = !state;
  }
}