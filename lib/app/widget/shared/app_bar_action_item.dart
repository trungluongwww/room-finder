// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:roomeasy/app/constant/app_color.dart';
import 'package:roomeasy/app/constant/app_size.dart';

class AppBarActionItem extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPress;
  final bool showNotification;
  final int showNumber;

  const AppBarActionItem({
    Key? key,
    required this.icon,
    required this.onPress,
    required this.showNotification,
    required this.showNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: badges.Badge(
          position: badges.BadgePosition.topEnd(top: -3, end: -3),
          showBadge: showNumber > 0,
          badgeContent: Text(
            showNumber.toString(),
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white),
          ),
          badgeStyle: const badges.BadgeStyle(
            shape: badges.BadgeShape.circle,
            badgeColor: AppColor.appWarningColor,
          ),
          child: SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: onPress,
              icon: Icon(
                icon,
                size: AppSize.iconDefault,
                color: AppColor.appIconDefaultColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
