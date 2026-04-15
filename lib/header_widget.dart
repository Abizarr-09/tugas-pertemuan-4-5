import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String role;
  final int level;

  const HeaderWidget({
    super.key,
    required this.name,
    required this.role,
    required this.level,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.white, Colors.cyanAccent]),
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/id/53/1280/1280',
                ),
              ),
              Positioned(
                right: 15,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: Text(
                    'Level $level',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 10,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: .bold,
                  ),
                ),
                Text(
                  role,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: .bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
