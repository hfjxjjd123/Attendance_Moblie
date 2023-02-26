class Schedule{
  int name= 0;
  int groupId=0;
  int reps=1;
  int period=7;

  Schedule({
    required this.name,
    required this.groupId,
    required this.reps,
    required this.period
  });

  Schedule.fromJson(dynamic json) {
    name = json['name'];
    groupId = json['groupId'];
    reps = json['reps'];
    period = json['period'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['groupId'] = groupId;
    map['reps'] = reps;
    map['period'] = period;
    return map;
  }


}