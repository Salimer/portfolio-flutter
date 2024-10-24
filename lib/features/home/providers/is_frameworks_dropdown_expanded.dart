import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'is_languages_dropdown_expanded.dart';
import 'is_tools_dropdown_expanded.dart';

part 'is_frameworks_dropdown_expanded.g.dart';

@riverpod
class IsFrameworksDropdownExpanded extends _$IsFrameworksDropdownExpanded {
  @override
  bool build() => false;

  void toggle() {
    state = !state;
  }

  void open() {
    state = true;
    ref.read(isLanguagesDropdownExpandedProvider.notifier).close();
    ref.read(isToolsDropdownExpandedProvider.notifier).close();
  }

  void close() {
    state = false;
  }
}
