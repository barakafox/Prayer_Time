import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayer_time_revision/Provider/prayer_provider.dart';
import 'package:prayer_time_revision/Widget/custom_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<PrayerProvider>(
            builder: (context, objectProvider, child) {
              var objectModel = objectProvider.prayerModel;
              if(objectModel == null){
                objectProvider.getData();
                return CircularProgressIndicator();
              }else{
                return ListView.builder(
                    itemBuilder: (context, index) {
                      var name = objectModel.timings.keys;
                      var date = objectModel.timings.values;
                      
                      return CustomWidget(datatime: name.elementAt(index), date: date.elementAt(index));
                    },
                  itemCount: objectModel.timings.length,
                );
              }
            },
        ),
      )
    );
  }
}
