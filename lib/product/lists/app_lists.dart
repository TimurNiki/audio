final class AppLists {
  AppLists._();
  static List<Map<String, dynamic>> sections = [
    {
      'title': 'General',
      'items': [
        {'title': 'Edit Profile', 'onTap': () {}},
        {'title': 'Notifications', 'onTap': () {}},
        {'title': 'Wishlist', 'onTap': () {}},
      ]
    },
    {
      'title': 'Legal',
      'items': [
        {'title': 'Terms of Use', 'onTap': () {}},
        {'title': 'Privacy Policy', 'onTap': () {}},
      ]
    },
    {
      'title': 'Personal',
      'items': [
        {'title': 'Report a Bug', 'onTap': () {}},
        {
          'title': 'Logout',
          'onTap': () {
            // Add logout logic here
          }
        },
      ]
    },
  ];
}
