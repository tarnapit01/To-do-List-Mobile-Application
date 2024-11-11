import 'package:flutter/material.dart';
import 'package:to_do_list/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 65),
            const Text(
              "To do List in shit life",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Inter"),
            ),
            const SizedBox(height: 50),
            const Text("Do list in Shit life",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Inter")),
            const SizedBox(height: 300),
            Builder(
              builder: (BuildContext newContext) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      newContext, // Use the new context from Builder
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(60),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Shit",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ));
  }
}
