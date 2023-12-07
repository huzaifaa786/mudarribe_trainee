import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:mudarribe_trainee/models/trainer.dart';

class HomeApi {
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
}
