import 'package:flutter/material.dart';
import 'widgets/profile_widgets_import.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(), // Custom AppBar
      body: ProfileBody(),
    );
  }
}
