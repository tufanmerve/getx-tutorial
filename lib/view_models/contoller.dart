import 'package:get/get.dart';

import '../models/record.dart';

class Controller extends GetxController {
  var records = <Record>[
    Record(weight: 80, dateTime: DateTime.now(), note: 'hello'),
    Record(weight: 81, dateTime: DateTime.now(), note: 'again'),
    Record(weight: 82, dateTime: DateTime.now(), note: 'welcome'),
    Record(weight: 83, dateTime: DateTime.now(), note: 'world')
  ].obs;

  addRecord(weight ,dateTime) {
    records.add(
      Record(weight: weight, dateTime: dateTime, note: 'new'),
    );
  }

  deleteRecord(Record record){
    records.remove(record);
  }

  
}
