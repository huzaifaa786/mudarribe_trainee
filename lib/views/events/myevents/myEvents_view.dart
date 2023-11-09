// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/components/appbar.dart';
import 'package:mudarribe_trainee/components/eventContainer.dart';


class MyEvents extends StatefulWidget {
  const MyEvents({super.key});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopScreenBar(
              mytext: "My Events",
            ),
            Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Column(
                  children: [
                    EventsContainer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: EventsContainer(),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
