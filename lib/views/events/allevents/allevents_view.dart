// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/components/eventContainer.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({super.key});

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EventCard(),
      ],
    );
  }
}
