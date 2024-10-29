import 'package:flutter/material.dart';
import 'package:myapp/product/core/constants/app_constants_import.dart';
import '../../../product/widgets/custom_textfield.dart';
import '../widgets/search_appbar.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextField(
              borderColor: AppColors.grey,
              hintText: AppStrings.searchHeadphone,
              isPassword: false,
              iconPath: "assets/icons/search.svg",
            ),
          ],
        ),
      ),
    );
  }
}
