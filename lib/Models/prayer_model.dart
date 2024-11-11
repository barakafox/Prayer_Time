class PrayerModel{
  Map<String,dynamic> timings;

  PrayerModel({required this.timings});

  factory PrayerModel.fromjson(Map<String,dynamic> json){
    return PrayerModel(timings: json['data']['timings']);
  }
}