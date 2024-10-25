import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/product/core/constants/app_constants.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: SvgPicture.asset(
          "/assets/icons/menu-variant.svg",
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "/assets/icons/audio_svg.svg",
          ),
          const SizedBox(width: 8),
          const Text(AppStrings.audio),
        ],
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
          radius: 15,
        ),
        SizedBox(width: 10), // Add some spacing
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
