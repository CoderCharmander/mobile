import 'package:filcnaplo/theme.dart';
import 'package:filcnaplo_mobile_ui/common/profile_image/profile_image.dart';
import 'package:filcnaplo_mobile_ui/screens/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key, required this.child}) : super(key: key);

  final ProfileImage child;

  @override
  Widget build(BuildContext context) {
    return ProfileImage(
      backgroundColor: child.backgroundColor,
      heroTag: child.heroTag,
      key: child.key,
      name: child.name,
      radius: child.radius,
      badge: child.badge,
      role: child.role,
      onTap: () {
        showSlidingBottomSheet(
          context,
          useRootNavigator: true,
          builder: (context) => SlidingSheetDialog(
            color: AppColors.of(context).background,
            duration: const Duration(milliseconds: 400),
            scrollSpec: const ScrollSpec.bouncingScroll(),
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [1.0],
              positioning: SnapPositioning.relativeToSheetHeight,
            ),
            cornerRadius: 16,
            cornerRadiusOnFullscreen: 0,
            builder: (context, state) => Material(
              color: AppColors.of(context).background,
              child: const SettingsScreen(),
            ),
          ),
        );
      },
    );
  }
}
