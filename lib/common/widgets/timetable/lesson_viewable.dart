import 'package:filcnaplo_kreta_api/models/lesson.dart';
import 'package:filcnaplo_mobile_ui/common/viewable.dart';
import 'package:filcnaplo_mobile_ui/common/widgets/lesson/lesson_tile.dart';
import 'package:filcnaplo_mobile_ui/common/widgets/lesson/lesson_view.dart';
import 'package:flutter/material.dart';

class LessonViewable extends StatelessWidget {
  const LessonViewable(this.lesson, {Key? key, this.swapDesc = false}) : super(key: key);

  final Lesson lesson;
  final bool swapDesc;

  @override
  Widget build(BuildContext context) {
    final tile = LessonTile(lesson, swapDesc: swapDesc);

    if (lesson.subject.id == '' || tile.lesson.isEmpty) return tile;

    return FilcContextMenu(tile: tile, view: LessonView(lesson));
  }
}
