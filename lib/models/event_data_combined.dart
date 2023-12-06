import 'package:mudarribe_trainee/models/event.dart';
import 'package:mudarribe_trainee/models/trainer.dart';

class CombinedEventData {
  final Trainer trainer;
  final Events event;
  CombinedEventData({
    required this.trainer,
    required this.event,
  });
}
