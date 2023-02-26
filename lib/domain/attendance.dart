class Attendance{
  int eventId= 0;
  int mateId=0;

  Attendance({
    required this.eventId,
    required this.mateId
  });

  Attendance.fromJson(dynamic json) {
    eventId = json['eventId'];
    mateId = json['mateId'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['eventId'] = eventId;
    map['mateId'] = mateId;
    return map;
  }


}