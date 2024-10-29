import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../assets/gen/assets.gen.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/keys_enums.dart';
import '../../../../../core/constants/layout.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../data/models/technology_item_model.dart';
import '../../../providers/is_frameworks_dropdown_expanded.dart';
import '../../../providers/is_languages_dropdown_expanded.dart';
import '../../../providers/is_tools_dropdown_expanded.dart';
import 'technology_card.dart';

class StackItemWidget extends ConsumerWidget {
  const StackItemWidget({
    super.key,
    required this.type,
  });

  final StackDropdownTypesEnum type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    dynamic isExpanded;
    void Function() onTap;
    String title;
    List<TechnologyItemModel> list;

    switch (type) {
      case StackDropdownTypesEnum.languages:
        title = "Languages";
        isExpanded = ref.watch(isLanguagesDropdownExpandedProvider);
        list = languages();
        onTap = () {
          ref.read(isLanguagesDropdownExpandedProvider.notifier).open();
        };
      case StackDropdownTypesEnum.tools:
        title = "Tools";
        isExpanded = ref.watch(isToolsDropdownExpandedProvider);
        list = tools();
        onTap = () {
          ref.read(isToolsDropdownExpandedProvider.notifier).open();
        };
      case StackDropdownTypesEnum.frameworks:
        title = "Frameworks";
        isExpanded = ref.watch(isFrameworksDropdownExpandedProvider);
        list = frameworks();
        onTap = () {
          ref.read(isFrameworksDropdownExpandedProvider.notifier).open();
        };
    }

    final double expansionHeight = list.length * Layout.technologyCardHeight +
        Layout.smallSpace * (list.length - 1);

    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyles.medium20),
                AnimatedRotation(
                  turns: isExpanded ? 0.25 : 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.identity[900],
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          key: const Key("animated_container"),
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          duration: const Duration(milliseconds: 300),
          height: isExpanded ? expansionHeight : 0,
          curve: Curves.easeInCubic,
          child: ListView.separated(
            itemCount: list.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, index) => TechnologyCard(item: list[index]),
            separatorBuilder: (context, index) =>
                const SizedBox(height: Layout.smallSpace),
          ),
        ),
      ],
    );
  }

  List<TechnologyItemModel> languages() => [
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        )
      ];

  List<TechnologyItemModel> frameworks() => [
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        ),
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        )
      ];

  List<TechnologyItemModel> tools() => [
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        ),
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        ),
        TechnologyItemModel(
          name: "JavaScript",
          image: Assets.images.png.javaScriptLogo.image(fit: BoxFit.cover),
        )
      ];
}
