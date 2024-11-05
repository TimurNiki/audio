// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class FilterModal extends StatefulWidget {
  const FilterModal({super.key});

  @override
  _FilterModalState createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  // Category and Sort By selected states
  List<String> selectedCategories = ['Headphone'];
  String selectedSort = 'Popularity';

  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView( // Add scroll support
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Close Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Filter",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Category Section
            const Text("Category", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                FilterChipWidget(
                  label: 'Headphone',
                  isSelected: selectedCategories.contains('Headphone'),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedCategories.add('Headphone');
                      } else {
                        selectedCategories.remove('Headphone');
                      }
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Headband',
                  isSelected: selectedCategories.contains('Headband'),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedCategories.add('Headband');
                      } else {
                        selectedCategories.remove('Headband');
                      }
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Earpads',
                  isSelected: selectedCategories.contains('Earpads'),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedCategories.add('Earpads');
                      } else {
                        selectedCategories.remove('Earpads');
                      }
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Cable',
                  isSelected: selectedCategories.contains('Cable'),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedCategories.add('Cable');
                      } else {
                        selectedCategories.remove('Cable');
                      }
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Sort By Section
            const Text("Sort By", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                FilterChipWidget(
                  label: 'Popularity',
                  isSelected: selectedSort == 'Popularity',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'Popularity';
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Newest',
                  isSelected: selectedSort == 'Newest',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'Newest';
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Oldest',
                  isSelected: selectedSort == 'Oldest',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'Oldest';
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'High Price',
                  isSelected: selectedSort == 'High Price',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'High Price';
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Low Price',
                  isSelected: selectedSort == 'Low Price',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'Low Price';
                    });
                  },
                ),
                FilterChipWidget(
                  label: 'Review',
                  isSelected: selectedSort == 'Review',
                  onSelected: (selected) {
                    setState(() {
                      selectedSort = 'Review';
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Price Range Section
            const Text("Price Range", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: minPriceController,
                    decoration: InputDecoration(
                      hintText: 'Min Price',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    controller: maxPriceController,
                    decoration: InputDecoration(
                      hintText: 'Max Price',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Apply Filter Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Apply filter logic
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Apply Filter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onSelected;

  const FilterChipWidget({super.key, required this.label, this.isSelected = false, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      selectedColor: Colors.green,
      backgroundColor: Colors.grey[200],
      onSelected: onSelected,
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

// Usage in main widget:
void showFilterModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (BuildContext context) {
      return const FilterModal();
    },
  );
}
