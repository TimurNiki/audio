import 'package:flutter/material.dart';
import '../../../product/lists/app_lists.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({
    super.key,
  });

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header Section
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                        'assets/images/profile_picture.png'), // Replace with actual asset path
                  ),
                  SizedBox(height: 12),
                  Text(
                    'X',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'x@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // ListView.builder for dynamic sections and items
            ListView.builder(
              shrinkWrap: true, // Prevents ListView from taking up full space
              physics:
                  const NeverScrollableScrollPhysics(), // Disables internal scrolling
              itemCount: AppLists.sections
                  .length, // Use the static 'sections' list from AppLists
              itemBuilder: (context, sectionIndex) {
                final section =
                    AppLists.sections[sectionIndex]; // Access section
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Section Title
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        section['title'], // Display section title
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // List of items within the section
                    ...List.generate(section['items'].length, (itemIndex) {
                      final item =
                          section['items'][itemIndex]; // Access each item
                      return Column(
                        children: [
                          ListTile(
                            title: Text(item['title']), // Display item title
                            onTap: item['onTap'], // Trigger the onTap action
                          ),
                          if (itemIndex < section['items'].length - 1)
                            const Divider(), // Divider between items
                        ],
                      );
                    }),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
