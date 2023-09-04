import 'package:flutter/material.dart';

import '../../../utils/design_constants.dart';

class SidebarItem extends StatelessWidget {
  final int index;
  final bool isSelected;
  final String text;
  final Function(int) onTap;
  const SidebarItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap(index);
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      title: Text(
        text.toUpperCase(),
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: DesignConstants.txtColorSecondary,
              fontWeight: FontWeight.bold,
              decoration: isSelected ? TextDecoration.lineThrough : null,
              decorationColor:
                  isSelected ? DesignConstants.secondaryColor : null,
              decorationThickness: isSelected ? 4 : null,
            ),
      ),
    );
  }
}
