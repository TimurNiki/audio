import 'package:flutter/material.dart';
import 'package:myapp/product/core/constants/app_constants_import.dart';

final class ProfileAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProfileAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(AppStrings.profile),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
