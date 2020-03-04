class StylizedImages {
  final eventThumb;
  final eventLarge;
  final eventLarge_2x;
  final eventLargeLightbox;
  final groupThumb;
  final groupThumbSquare;
  final groupLarge;
  final groupLargeLightbox;
  final eventLargeCrop; 
  final eventList; 
  final eventList_2x; 
  final eventGrid; 
  final eventGrid_2x;
  final eventFeatureLarge;
  final eventFeatureThumb;

  StylizedImages({
    this.eventThumb,
    this.eventLarge,
    this.eventLarge_2x,
    this.eventLargeLightbox,
    this.groupThumb,
    this.groupThumbSquare,
    this.groupLarge,
    this.groupLargeLightbox,
    this.eventLargeCrop, 
    this.eventList, 
    this.eventList_2x, 
    this.eventGrid, 
    this.eventGrid_2x,
    this.eventFeatureLarge,
    this.eventFeatureThumb
  });

  factory StylizedImages.fromJson(Map<String, dynamic> json) {
    return StylizedImages(
      eventThumb: json['event_thumb'],
      eventLarge: json['event_large'],
      eventLarge_2x: json['event_large_2x'],
      eventLargeLightbox: json['event_large_lightbox'],
      groupThumb: json['group_thumb'],
      groupThumbSquare: json['group_thumb_square'],
      groupLarge: json['group_large'],
      groupLargeLightbox: json['group_large_lightbox'],
      eventLargeCrop: json['event_large_crop'], 
      eventList: json['event_list'], 
      eventList_2x: json['event_list_2x'], 
      eventGrid: json['event_grid'], 
      eventGrid_2x: json['event_grid_2x'],
      eventFeatureLarge: json['event_feature_large'],
      eventFeatureThumb: json['event_feature_thumb'],
    );
  }
}
