import 'package:gdsc_uos_atttendance/domain/event.dart';

class Group{
  int id = 0;
  String name="";
  String notification="";
  Event? nextEvent;
  List<int> relatedUsersId = [];

  Group({
    required this.id,
    required this.name,
    required this.notification,
    required this.relatedUsersId,
    this.nextEvent,
  });

  Group.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    notification = json['notification'];
    nextEvent = json['nextEvent'];
    relatedUsersId = json['relatedUsersId'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['notification'] = notification;
    map['nextEvent'] = nextEvent;
    map['relatedUsersId'] = relatedUsersId;
    return map;
  }


}