import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mudarribe_trainee/models/trainer.dart';

class PostApi {
  static var postquery = FirebaseFirestore.instance
      .collection('trainer_posts')
      .orderBy('id', descending: true);

  static Future<Trainer> fetchTrainerData(String trainerId) async {
    final trainerSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(trainerId)
        .get();

    final trainerData = trainerSnapshot.data() as Map<String, dynamic>;
    return Trainer.fromMap(trainerData);
  }

  static var eventquery = FirebaseFirestore.instance
      .collection('trainer_events')
      .orderBy('id', descending: true)
      .limit(6);
}
