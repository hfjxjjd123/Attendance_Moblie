class Event{
  int id= 0;
  int groupId=0;
  String scheduleName="";
  //!! Datetime 형식으로 수정
  String date="";
  String time="";

  Event({
    required this.id,
    required this.groupId,
    required this.scheduleName,
    required this.date,
    required this.time
  });

  Event.fromJson(dynamic json) {
    id = json['id'];
    groupId = json['groupId'];
    scheduleName = json['scheduleName'];
    date = json['date'];
    time = json['time'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['groupId'] = groupId;
    map['scheduleName'] = scheduleName;
    map['date'] = date;
    map['time'] = time;
    return map;
  }


}