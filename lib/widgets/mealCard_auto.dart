import 'package:flutter/material.dart';

class MealCardAuto extends StatelessWidget {
  final String mealName;
  final String mealType;
  final IconData? icon;

  const MealCardAuto({
    super.key,
    this.mealName = "Sample Meal",
    this.mealType = "Breakfast",
    this.icon,
  });

  IconData _getMealIcon() {
    if (icon != null) return icon!;
    
    switch (mealType.toLowerCase()) {
      case 'breakfast':
        return Icons.breakfast_dining;
      case 'lunch':
        return Icons.lunch_dining;
      case 'dinner':
        return Icons.dinner_dining;
      default:
        return Icons.restaurant;
    }
  }

  Color _getMealColor() {
    switch (mealType.toLowerCase()) {
      case 'breakfast':
        return Colors.orange.shade100;
      case 'lunch':
        return Colors.blue.shade100;
      case 'dinner':
        return Colors.purple.shade100;
      default:
        return Colors.grey.shade200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              height: 64,
              width: 64,
              decoration: BoxDecoration(
                color: _getMealColor(),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                _getMealIcon(),
                color: Colors.grey.shade700,
                size: 32,
              ),
            ),
            const SizedBox(width: 16),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mealName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    mealType,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade400,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}

