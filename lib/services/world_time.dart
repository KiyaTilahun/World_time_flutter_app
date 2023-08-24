import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDatetime;
  WorldTime({required this.flag, required this.location, required this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      String datatime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datatime);

      now = now.add(Duration(hours: int.parse(offset)));
      print(now);
      time = DateFormat.jm().format(now);
      isDatetime = (now.hour > 6 && now.hour < 20) ? true : false;
    } catch (e) {
      print("error $e");
      time = "nothing to load";
    }
  }
}
