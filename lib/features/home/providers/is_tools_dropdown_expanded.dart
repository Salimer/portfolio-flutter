import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'is_frameworks_dropdown_expanded.dart';
import 'is_languages_dropdown_expanded.dart';

part 'is_tools_dropdown_expanded.g.dart';

@riverpod
class IsToolsDropdownExpanded extends _$IsToolsDropdownExpanded {
  @override
  bool build() => false;

  void toggle() {
    state = !state;
  }

  void open() {
    state = true;
    ref.read(isFrameworksDropdownExpandedProvider.notifier).close();
    ref.read(isLanguagesDropdownExpandedProvider.notifier).close();
  }

  void close() {
    state = false;
  }
}
