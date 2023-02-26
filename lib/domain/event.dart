class Event{
  int id= 0;
  int groupId=0;

  Event({
    required this.id,
    required this.groupId
  });

  Event.fromJson(dynamic json) {
    id = json['id'];
    groupId = json['groupId'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['groupId'] = groupId;
    return map;
  }


}