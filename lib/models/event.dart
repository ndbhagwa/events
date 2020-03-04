import 'dart:convert';
import 'package:events/models/sponsors.dart';
import 'package:events/models/stylizedImages.dart';
import 'package:events/services/webservice.dart';
import 'package:events/utils/constants.dart';

class Event {
  final datetimeModified;
  final datetimeStart;
  final datetimeEnd;
  final hasEndTime;
  final dateStart;
  final dateEnd;
  final timeStart;
  final timeEnd;
  final timeZone;
  final eventTitle;
  final occurrenceTitle;
  final combinedTitle;
  final eventSubtitle;
  final eventType;
  final eventTypeId;
  final description;
  final occurrenceNotes;
  final guid;
  final permalink;
  final buildingId;
  final buildingName;
  final campusMapsId;
  final room;
  final locationName;
  final cost;
  final tags;
  final website;
  final sponsors;
  final imageUrl;
  final styledImages;
  final occurrenceCount;
  final firstOccurrence;

  Event({
    this.datetimeModified,
    this.datetimeStart,
    this.datetimeEnd,
    this.hasEndTime,
    this.dateStart,
    this.dateEnd,
    this.timeStart,
    this.timeEnd,
    this.timeZone,
    this.eventTitle,
    this.occurrenceTitle,
    this.combinedTitle,
    this.eventSubtitle,
    this.eventType,
    this.eventTypeId,
    this.description,
    this.occurrenceNotes,
    this.guid,
    this.permalink,
    this.buildingId,
    this.buildingName,
    this.campusMapsId,
    this.room,
    this.locationName,
    this.cost,
    this.tags,
    this.website,
    this.sponsors,
    this.imageUrl,
    this.styledImages,
    this.occurrenceCount,
    this.firstOccurrence,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event (
      datetimeModified: json['datetime_modified'],
      datetimeStart: json['datetime_start'],
      datetimeEnd: json['datetime_end'],
      hasEndTime: json['has_end_time'],
      dateStart: json['date_start'],
      dateEnd: json['date_end'],
      timeStart: json['time_start'],
      timeEnd: json['time_end'],
      timeZone: json['time_zone'],
      eventTitle: json['event_title'],
      occurrenceTitle: json['occurrence_title'],
      combinedTitle: json['combined_title'],
      eventSubtitle: json['event_subtitle'],
      eventType: json['event_type'],
      eventTypeId: json['event_type_id'],
      description: json['description'],
      occurrenceNotes: json['occurrence_notes'],
      guid: json['guid'],
      permalink: json['permalink'],
      buildingId: json['building_id'],
      buildingName: json['building_name'],
      campusMapsId: json['campus_maps_id'],
      room: json['room'],
      locationName: json['location_name'],
      cost: json['cost'],
      tags: json['tags'],
      website: json['website'],
      sponsors: Sponsors.fromJson(json['sponsors']),
      imageUrl: json['image_url'] == '' ? null : json['image_url'],
      styledImages: StylizedImages.fromJson(json['styled_images']),
      occurrenceCount: json['occurrence_count'],
      firstOccurrence: json['first_occurrence'],
    );
  }

  static Resource<List<Event>> get all {
    return Resource(
      url: Constants.DAY_EVENTS_URL,
      parse: (response) {
        final result = json.decode(response.body); 
        return result.entries.map<Event>((i) => Event.fromJson(i.value)).toList();
      }
    );
  }
}
