import 'package:flutter/material.dart';

class QuestWidget extends StatelessWidget {
  final String quest;
  final String reward;
  final IconData icon;
  final Color backgroundColor;

  const QuestWidget({
    super.key,
    required this.quest,
    required this.reward,
    required this.icon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Quest Clicked!')));
      },
      child: Ink(
        padding: .all(12),
        decoration: BoxDecoration(
          color: Colors.grey.withAlpha(14),
          borderRadius: BorderRadius.circular(14),
          border: .all(color: Colors.black.withAlpha(14)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(10),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueAccent.withAlpha(12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: backgroundColor),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(quest, style: TextStyle(fontWeight: .bold)),
                  SizedBox(height: 4),
                  Text(reward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
