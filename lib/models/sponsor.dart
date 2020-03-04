class Sponsor {
  final groupName;
  final groupId;
  final website;

  Sponsor({this.groupName, this.groupId, this.website});
  
  factory Sponsor.fromJson(Map<String, dynamic> json) {
    return Sponsor(
      groupName: json['group_name'],
      groupId: json['group_id'],
      website: json['website'],
    );
  }
}
