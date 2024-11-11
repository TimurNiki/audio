import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/feature/profile/profile_page.dart';
import 'package:myapp/product/core/constants/app_strings.dart';

final class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
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
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
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
      actions: [
        GestureDetector(
          onTap: () {
            // Navigate to profile page when avatar is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const ProfilePage(), // Replace with your ProfilePage widget
              ),
            );
          },
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
            radius: 15,
          ),
        ),
        const SizedBox(width: 10), // Add some spacing
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
