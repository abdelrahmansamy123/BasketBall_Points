import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "team A",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("$teamAPoints", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                const SizedBox(
                  height: 550,
                  child: VerticalDivider(color: Colors.grey, thickness: 2),
                ),
                Column(
                  children: [
                    Text(
                      "team B",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("$teamBPoints", style: TextStyle(fontSize: 150)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                        fixedSize: Size(180, 70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: const Color.fromARGB(255, 3, 3, 3),
                fixedSize: Size(180, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text('Reset', style: TextStyle(fontSize: 24)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
