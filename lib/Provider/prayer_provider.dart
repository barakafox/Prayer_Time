import 'package:flutter/material.dart';
import 'package:prayer_time_revision/Models/prayer_model.dart';
import 'package:prayer_time_revision/Service/prayer_service.dart';

class PrayerProvider extends ChangeNotifier{
  PrayerModel? prayerModel;

  getData() async{
    prayerModel = await PrayerService.GetData();
    notifyListeners();
  }
}