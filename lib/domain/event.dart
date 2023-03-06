class Event{
  int id= 0;
  int groupId=0;
  String name="";
  int rule = -1;
  //!! Datetime 형식으로 수정
  String ntime="";
  String code="";

  Event({
    required this.id,
    required this.groupId,
    required this.name,
    required this.ntime,
    required this.code,
    required this.rule
  });

  Event.fromJson(dynamic json) {
    id = json['id'];
    groupId = json['groupId'];
    name = json['name'];
    ntime = json['ntime'];
    code = json['code'];
    rule = json['rule'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['groupId'] = groupId;
    map['name'] = name;
    map['ntime'] = ntime;
    map['code'] = code;
    map['rule'] = rule;
    return map;
  }


}