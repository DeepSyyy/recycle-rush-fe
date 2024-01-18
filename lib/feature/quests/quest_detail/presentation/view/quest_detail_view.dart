import 'package:flutter/material.dart';
import 'package:recycle_rush_fe/feature/quests/quest_detail/presentation/widget/quest_detail_widget.dart';

class RecycleRushViewQuestDetail extends StatelessWidget {
  static const routeName = '/quest-detail';

  const RecycleRushViewQuestDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final title = args['title'] as String;
    final description = args['description'] as String;
    final coins = args['coins'] as int;
    final foregroundColor = args['foregroundColor'] as Color;
    final backgroundColor = args['backgroundColor'] as Color;

    return RecycleRushWidgetQuestDetail(
      title: title,
      description: description,
      coins: coins,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
    );
  }
}
