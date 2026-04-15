import 'package:flutter/material.dart';
import 'package:flutter_application_abizar_4/chip_widget.dart';
import 'package:flutter_application_abizar_4/header_widget.dart';
import 'package:flutter_application_abizar_4/quest_widget.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ragnamok'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            HeaderWidget(name: 'Himmel', level: 99, role: 'Pahlawan'),
            SizedBox(height: 8),
            Row(
              spacing: 8,
              children: [
                ChipWidget(
                  icon: Icons.favorite,
                  label: 'HP : ',
                  value: 999,
                  backgroundColor: Colors.red,
                  borderColor: Colors.red,
                ),
                ChipWidget(
                  icon: Icons.favorite,
                  label: 'MP : ',
                  value: 999,
                  backgroundColor: Colors.blue,
                  borderColor: Colors.blue,
                ),
                ChipWidget(
                  icon: Icons.shield,
                  label: 'DEF : ',
                  value: 999,
                  backgroundColor: Colors.blueGrey,
                  borderColor: Colors.black,
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Todays Quest',
              style: TextStyle(fontWeight: .bold, fontSize: 20),
            ),
            Column(
              spacing: 8,
              children: [
                QuestWidget(
                  quest: 'Membuat Party',
                  reward: '1000 Gold',
                  icon: Icons.task_alt,
                  backgroundColor: Colors.purpleAccent,
                ),
                QuestWidget(
                  quest: 'Kalahkan Raja Iblis',
                  reward: 'Hidup Damai',
                  icon: Icons.circle_outlined,
                  backgroundColor: Colors.purpleAccent,
                ),
                QuestWidget(
                  quest: 'Menyelamatkan Desa',
                  reward: 'Buku Sihir',
                  icon: Icons.circle_outlined,
                  backgroundColor: Colors.purpleAccent,
                )
              ]
            )

          ],
        ),
      ),
    );
  }
}
