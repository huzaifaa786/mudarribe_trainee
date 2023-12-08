// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:mudarribe_trainee/api/post_api.dart';
import 'package:mudarribe_trainee/components/banner_card.dart';
import 'package:mudarribe_trainee/components/category_card.dart';
import 'package:mudarribe_trainee/components/eventDetailsCard.dart';
import 'package:mudarribe_trainee/components/main_topbar.dart';
import 'package:firebase_pagination/firebase_pagination.dart';
import 'package:mudarribe_trainee/components/post_card.dart';
import 'package:mudarribe_trainee/components/searchInput.dart';
import 'package:mudarribe_trainee/models/event.dart';
import 'package:mudarribe_trainee/models/event_data_combined.dart';
import 'package:mudarribe_trainee/models/post_data_combined.dart';
import 'package:mudarribe_trainee/models/post.dart';
import 'package:mudarribe_trainee/models/trainer.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:mudarribe_trainee/utils/fontWeight.dart';
import 'package:mudarribe_trainee/views/home/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    String selectedCategory = '';
    String selectedGender = '';
    String selectedLanguage = '';

    return GetBuilder<HomeController>(
      autoRemove: false,
      builder: (controller) => Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: [
                MainTopBar(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SearchInput(),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Followed trainers',
                        style: TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 12),
                        height: 100,
                        child: ListView(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: List.generate(
                                10,
                                (index) => Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: const GradientBoxBorder(
                                              gradient: LinearGradient(colors: [
                                                Color(4290773187),
                                                Color(4285693389),
                                                Color(4278253801),
                                                Color(4278253801)
                                              ]),
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/user.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'hamad_01',
                                          style: const TextStyle(
                                            color: white,
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: weight500,
                                          ),
                                        ),
                                      ],
                                    )))),
                    Container(
                      constraints: BoxConstraints(minHeight: 0, maxHeight: 220),
                      child: FirestorePagination(
                        shrinkWrap: true,
                        isLive: true,
                        limit: 6,
                        onEmpty: Text(''),
                        viewType: ViewType.list,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        query: HomeApi.posterEventQuery,
                        bottomLoader: CircularProgressIndicator(),
                        itemBuilder: (context, documentSnapshot, index) {
                          final eventData =
                              documentSnapshot.data() as Map<String, dynamic>;
                          Events banners = Events.fromMap(eventData);
                          return BannerCard(
                              endTime: banners.endTime,
                              image: banners.imageUrl,
                              price: banners.price,
                              startTime: banners.startTime,
                              title: banners.title);
                        },
                      ),
                    ),
                    Gap(12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.showAllCategory();
                          },
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xFF727DCD),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount:
                          controller.showAllCards ? controller.cards.length : 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0,
                      ),
                      itemBuilder: (context, index) {
                        return CategoryCard(
                          title: controller.cards[index]['title'],
                          image: controller.cards[index]['image'],
                          firstColor: Color(int.parse(
                              controller.cards[index]['firstColor']!)),
                          secondColor: Color(int.parse(
                              controller.cards[index]['secondColor']!)),
                          beginX: controller.cards[index]['beginX'],
                          beginY: controller.cards[index]['beginY'],
                          endX: controller.cards[index]['endX'],
                          endY: controller.cards[index]['endY'],
                        );
                      },
                    ),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'New Events',
                          style: TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(
                              color: Color(0xFF727DCD),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(8),
                    Container(
                      constraints:
                          BoxConstraints(minHeight: 10, maxHeight: 450),
                      child: FirestorePagination(
                        shrinkWrap: true,
                        isLive: false,
                        limit: 20,
                        onEmpty: Text(
                          'No event uploaded yet.',
                          style: TextStyle(color: white.withOpacity(0.3)),
                        ),
                        viewType: ViewType.list,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        query: HomeApi.eventquery,
                        bottomLoader: CircularProgressIndicator(),
                        itemBuilder: (context, documentSnapshot, index) {
                          final eventData =
                              documentSnapshot.data() as Map<String, dynamic>;
                          final trainerId = eventData['trainerId'];
                          return FutureBuilder<Trainer>(
                            future: HomeApi.fetchTrainerData(trainerId),
                            builder: (context, snapshot) {
                              if (snapshot.hasError) {
                                return Text('');
                              }
                              if (!snapshot.hasData) {
                                return Text('');
                              }
                              Trainer trainerData = snapshot.data!;
                              Events events = Events.fromMap(eventData);
                              CombinedEventData combineEvent =
                                  CombinedEventData(
                                      trainer: trainerData, event: events);
                              return EventDetailsCard(
                                  category:
                                      combineEvent.trainer.category.join(' & '),
                                  name: combineEvent.trainer.name,
                                  image: combineEvent.trainer.profileImageUrl,
                                  eventimg: combineEvent.event.imageUrl,
                                  address: combineEvent.event.address,
                                  startTime: combineEvent.event.startTime,
                                  endTime: combineEvent.event.endTime,
                                  date: combineEvent.event.date,
                                  capcity: combineEvent.event.capacity,
                                  price: combineEvent.event.price);
                            },
                          );
                        },
                      ),
                    ),
                    Gap(20),
                    Text(
                      'Posts',
                      style: TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Gap(15),
                    FirestorePagination(
                      shrinkWrap: true,
                      isLive: true,
                      limit: 20,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      query: HomeApi.postquery,
                      bottomLoader: CircularProgressIndicator(),
                      itemBuilder: (context, documentSnapshot, index) {
                        final postData =
                            documentSnapshot.data() as Map<String, dynamic>;
                        final trainerId = postData['trainerId'];
                        return FutureBuilder<Trainer>(
                          future: HomeApi.fetchTrainerData(trainerId),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return Text('');
                            }
                            if (!snapshot.hasData) {
                              return Text('');
                            }
                            Trainer trainerData = snapshot.data!;
                            Post posts = Post.fromMap(postData);
                            CombinedData postdata =
                                CombinedData(trainer: trainerData, post: posts);
                            return PostCard(
                              userimg: postdata.trainer.profileImageUrl,
                              username: postdata.trainer.name,
                              postimg: postdata.post.imageUrl,
                              postdescription: postdata.post.caption,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
