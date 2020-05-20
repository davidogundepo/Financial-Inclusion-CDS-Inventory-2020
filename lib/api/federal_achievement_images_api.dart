
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/FederalAchievements.dart';
import '../notifier/federal_achievement_images_notifier.dart';

getFederalAchievements(FederalAchievementsNotifier federalAchievementsNotifier) async{
  QuerySnapshot snapshot = await Firestore.instance.collection('FederalAchievementImages').getDocuments();

  List<FederalAchievements> _federalAchievementsList = [];

  snapshot.documents.forEach((document) {
    FederalAchievements federalAchievements = FederalAchievements.fromMap(document.data);
    _federalAchievementsList.add(federalAchievements);
  });

  federalAchievementsNotifier.federalAchievementsList = _federalAchievementsList;
}