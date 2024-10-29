import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'is_frameworks_dropdown_expanded.dart';
import 'is_tools_dropdown_expanded.dart';

part 'is_languages_dropdown_expanded.g.dart';

@riverpod
class IsLanguagesDropdownExpanded extends _$IsLanguagesDropdownExpanded {
  @override
  bool build() => true;

  void toggle() {
    state = !state;
  }

  void open() {
    state = true;
    ref.read(isFrameworksDropdownExpandedProvider.notifier).close();
    ref.read(isToolsDropdownExpandedProvider.notifier).close();
  }

  void close() {
    state = false;
  }
}
