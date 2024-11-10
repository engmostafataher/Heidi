import 'package:flutter/material.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.bookmark, color: Colors.brown),
                      onPressed: () {
                        // Add bookmark functionality
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share, color: Colors.brown),
                      onPressed: () {
                        // Add bookmark functionality
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'حديث اليوم',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.settings)
                  ],
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              'قال رسول الله صلى الله عليه وسلم: "إن من أحبكم إليّ وأقربكم مني مجلسًا يوم القيامة أحاسنكم أخلاقًا"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
