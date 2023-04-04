class Event{
  int id= 0;
  int groupId=0;
  String name="";
  int rule = -1;
  //!! Datetime 형식으로 수정
  String nextSchedule="";
  String? code;

  Event({
    required this.id,
    required this.groupId,
    required this.name,
    required this.nextSchedule,
    required this.code,
    required this.rule
  });

  Event.fromJson(dynamic json) {
    id = json['id'];
    groupId = json['groupId'];
    name = json['name'];
    nextSchedule = json['nextSchedule'];
    code = json['code'];
    rule = json['rule'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['groupId'] = groupId;
    map['name'] = name;
    map['nextSchedule'] = nextSchedule;
    map['code'] = code;
    map['rule'] = rule;
    return map;
  }


}