// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:mudarribe_trainee/components/appbar.dart';
import 'package:mudarribe_trainee/components/myEventContainer.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard.dart';

class AllEventsView extends StatefulWidget {
  const AllEventsView({super.key});

  @override
  State<AllEventsView> createState() => _AllEventsViewState();
}

class _AllEventsViewState extends State<AllEventsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TopScreenBar(
                mytext: "New Events",
              ),
              EventDetailsCard(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: EventDetailsCard(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: EventDetailsCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
