import 'package:gdsc_uos_atttendance/domain/event.dart';

import 'host.dart';
import 'mate.dart';

class Group{
  int id= 0;
  String name="";
  String notification="";
  late Event nextEvent;
  List<Host> hosts= [];
  List<Mate> mates = [];

  Group({
    required this.id,
    required this.name,
    required this.notification,
    required this.nextEvent,
    required this.hosts,
    required this.mates,
  });

  Group.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    notification = json['notification'];
    nextEvent = json['nextEvent'];
    hosts = json['hosts'];
    mates = json['mates'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['notification'] = notification;
    map['nextEvent'] = nextEvent;
    map['hosts'] = hosts;
    map['mates'] = mates;
    return map;
  }


}