import 'package:events/models/sponsor.dart';

class Sponsors {
  final sponsors;
  
  Sponsors({this.sponsors});

  factory Sponsors.fromJson(List<dynamic> json) {
    var sponsorList = [];
    json.forEach((info) => sponsorList.add(Sponsor.fromJson(info)));
    return Sponsors(
      sponsors: sponsorList,
    );
  }
}
