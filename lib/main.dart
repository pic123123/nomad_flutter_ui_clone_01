import 'package:flutter/material.dart';
import 'package:nomad_flutter_ui_clone_01/widgets/schedule_card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  //둘이 붙어있는거 떨어지게 하자
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 28, // 아바타 크기 조절
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/40009719?v=4',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      iconSize: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'MONDAY 16',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Text(
                        'TODAY',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        Icons.brightness_1,
                        color: Colors.pinkAccent[700],
                        size: 8,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '17 18 19 20',
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ScheduleCard(
                  startDate: "1130",
                  endDate: "1220",
                  title: "DESIGN MEETING",
                  attendees: const ["ALEX", "HELENA", "NANA"],
                  cardColor: Colors.yellow[400],
                ),
                ScheduleCard(
                  startDate: "1235",
                  endDate: "1410",
                  title: "DAILY PROJECT",
                  attendees: const [
                    "ME",
                    "RICHARD",
                    "CIRY",
                    "TEST1",
                    "TEST2",
                    "TEST3",
                    "TEST4"
                  ],
                  cardColor: Colors.deepPurple[300],
                ),
                ScheduleCard(
                  startDate: "1500",
                  endDate: "1630",
                  title: "WEEKLY PLANNING",
                  attendees: const ["DEN", "NANA", "MARK"],
                  cardColor: Colors.lightGreen[400],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
