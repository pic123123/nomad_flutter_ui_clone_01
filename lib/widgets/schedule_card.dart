import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String startDate, endDate, title;
  final List<String> attendees;
  final Color cardColor;

  ScheduleCard({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.attendees,
    required Color? cardColor,
  })  : cardColor = cardColor ?? Colors.yellow[400]!,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      startDate.substring(0, 2),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      startDate.substring(2),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Text(' |', style: TextStyle(fontSize: 20)),
                    Text(
                      endDate.substring(0, 2),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      endDate.substring(2),
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: title
                      .split(' ')
                      .map((word) => Text(
                            word,
                            style: const TextStyle(
                                fontSize: 48, fontWeight: FontWeight.w600),
                          ))
                      .toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: Wrap(
                spacing: 8,
                runSpacing: 4,
                children: attendees.asMap().entries.map((entry) {
                  return entry.key < 3
                      ? Text(
                          entry.value,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        )
                      : entry.key == 3
                          ? Text(
                              '+${attendees.length - 3}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            )
                          : const SizedBox.shrink();
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
