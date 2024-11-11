import 'package:dio/dio.dart';
import 'package:prayer_time_revision/Models/prayer_model.dart';

class PrayerService{
  static Dio dio = Dio();
  
  static Future<PrayerModel> GetData() async{
    try{
      Response response = await dio.get('https://api.aladhan.com/v1/timingsByCity/09-11-2024?city=Giza&country=Egypt');
      if(response.statusCode == 200){
        return PrayerModel.fromjson(response.data);
      }else{
        throw Exception('Error');
      }
    }
    catch(e){
      throw Exception('Invalid Is $e');
    }
  }
}