import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:to_do_list/add_task_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: false),
      home: const MainAct(),
    );
  }
}

class MainAct extends StatefulWidget {
  const MainAct({super.key});

  @override
  State<MainAct> createState() => _HomePageState();
}

class _HomePageState extends State<MainAct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
              child: Text(
            "Do This Shit",
            style: TextStyle(color: Colors.black),
          )),
          bottom: TabBar(
              indicator: ShapeDecoration(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              tabs: const [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "Work",
                ),
                Tab(
                  text: "Personal",
                ),
              ]),
        ),
        body: Column(
          children: [
            const Expanded(
              child: TabBarView(children: [
                Center(child: Text("All Task")),
                Center(child: Text("All Task")),
                Center(child: Text("All Task")),
              ]),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(290, 500, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddPage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(40),
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "+",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(250, 550, 10, 5),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, // Use the new context from Builder
                MaterialPageRoute(builder: (context) => const AddPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(40),
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            child: const Text(
              "+",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
