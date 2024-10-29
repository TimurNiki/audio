import 'package:flutter/material.dart';
import '../../../product/model/products_model/products_model.dart';

class CategorySelector extends StatelessWidget {
  final Set<String> selectedCategories;
  final ValueChanged<String> onCategorySelected;

  const CategorySelector({
    super.key,
    required this.selectedCategories,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(Category.categories.length, (index) {
          final category = Category.categories[index];
          final isSelected = selectedCategories.contains(category.name);

          return GestureDetector(
            onTap: () => onCategorySelected(category.name),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), // Kenarları yuvarlatmak için
              ),
              padding: const EdgeInsets.all(8), // İçerik için boşluk
              child: Center(
                child: Text(
                  category.name,
                  style: TextStyle(
                    color: isSelected ? Colors.green :  Color(0xff7F7F7F),
                    fontSize: 14,
                    height: 20 / 14,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
