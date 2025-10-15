import 'package:flutter/material.dart';
import 'package:otex_app/core/theme/app_colors.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  bool _isHovering = false;
  int selectedIndex = 0;
  int hoveringIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Align(
            alignment: Alignment.topCenter,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              onEnter: (_) => setState(() {
                _isHovering = true;
                hoveringIndex = index;
              }),
              onExit: (_) => setState(() => _isHovering = false),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? AppColors.orange.withOpacity(0.2)
                        : (_isHovering&&index==hoveringIndex)
                        ? AppColors.transparentGray.withOpacity(0.2)
                        : Colors.transparent,
                    border: Border.all(color: AppColors.transparentGray),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "كل العروض",
                    style: TextStyle(
                      color: selectedIndex == index
                          ? AppColors.orange
                          : AppColors.gray,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
