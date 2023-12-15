import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import 'package:mudarribe_trainee/models/trainer.dart';
import 'package:mudarribe_trainee/models/trainer_story.dart';

class HomeApi {
  static var postquery = FirebaseFirestore.instance
      .collection('trainer_posts')
      .orderBy('id', descending: true);

  static var trainerquery = FirebaseFirestore.instance
      .collection('users')
      .where('userType', isEqualTo: 'trainer')
      .orderBy('id', descending: true);

  static Future<Trainer> fetchTrainerData(String trainerId) async {
    final trainerSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(trainerId)
        .get();

    final trainerData = trainerSnapshot.data() as Map<String, dynamic>;
    return Trainer.fromMap(trainerData);
  }

  static Future<TrainerStory?> fetchTrainerStoryData(String trainerId) async {
    final storySnapshot = await FirebaseFirestore.instance
        .collection('trainer_stories')
        .where('trainerId', isEqualTo: trainerId)
        .limit(1)
        .get();
    if (storySnapshot.docs.isNotEmpty) {
      final storyData = storySnapshot.docs[0];

      print(storyData);
      return TrainerStory.fromJson(storyData.data() as Map<String, dynamic>);
    }
  }

  static var eventquery = FirebaseFirestore.instance
      .collection('trainer_events')
      .where('date',
          isGreaterThan:
              DateFormat('dd/MM/y').format(DateTime.now()).toString())
      .orderBy('date', descending: true)
      .limit(6);

  static var posterEventQuery = FirebaseFirestore.instance
      .collection('trainer_events')
      .where('eventType', isEqualTo: 'paid')
      .where('eventStatus', isEqualTo: 'open')
      .where('paymentStatus', isEqualTo: 'paid')
      .where('date',
          isGreaterThanOrEqualTo:
              DateFormat('dd/MM/y').format(DateTime.now()).toString())
      .orderBy('date', descending: false);

  static postSaved(postId) async {
    String id = DateTime.now().millisecondsSinceEpoch.toString();
    await FirebaseFirestore.instance.collection('savedPost').doc(id).set({
      "id": id,
      'postId': postId,
      "userId": FirebaseAuth.instance.currentUser!.uid,
    });
  }

  static postUnsaved(postId) async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection('savedPost')
        .where('userId', isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .where('postId', isEqualTo: postId)
        .get();
    if (querySnapshot.docs.isNotEmpty) {
      final docId = querySnapshot.docs[0].id;
      await FirebaseFirestore.instance
          .collection('savedPost')
          .doc(docId)
          .delete();
    }
  }
}
