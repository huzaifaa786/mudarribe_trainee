import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:mudarribe_trainee/utils/colors.dart';
import 'package:story_view/story_view.dart';

class StoriesView extends StatefulWidget {
  const StoriesView({super.key});

  @override
  State<StoriesView> createState() => _StoriesViewState();
}

class _StoriesViewState extends State<StoriesView> {
  @override
  Widget build(BuildContext context) {
    final StoryController controller = StoryController();
    return Scaffold(
        body: SafeArea(
      child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              StoryView(controller: controller, storyItems: [
                StoryItem.text(
                  title:
                      "Hello world!\nHave a look at some great Ghanaian delicacies. I'm sorry if your mouth waters. \n\nTap!",
                  backgroundColor: Colors.orange,
                  roundedTop: true,
                ),
                // StoryItem.inlineImage(
                //   NetworkImage(
                //       "https://image.ibb.co/gCZFbx/Banku-and-tilapia.jpg"),
                //   caption: Text(
                //     "Banku & Tilapia. The food to keep you charged whole day.\n#1 Local food.",
                //     style: TextStyle(
                //       color: Colors.white,
                //       backgroundColor: Colors.black54,
                //       fontSize: 17,
                //     ),
                //   ),
                // ),
                StoryItem.inlineImage(
                  url:
                      "https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg",
                  controller: controller,
                  caption: Text(
                    "Omotuo & Nkatekwan; You will love this meal if taken as supper.",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                ),
                StoryItem.inlineImage(
                  url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
                  controller: controller,
                  caption: Text(
                    "Hektas, sektas and skatad",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                ),
              ]),
              Positioned(
                top: 20,
                left: 20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 52,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(colors: [
                              Color(4290773187),
                              Color(4285693389),
                              Color(4278253801)
                            ]),
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/profile.png',
                              fit: BoxFit.fill),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 13),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Salim Ahmed',
                                style: TextStyle(
                                    color: white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Image.asset(
                                  'assets/images/verified_tick.png',
                                  width: 20,
                                  height: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
