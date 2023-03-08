import 'package:gdsc_uos_atttendance/domain/event.dart';

import 'group.dart';

class User{
  int uid= 0;
  String name="";
  String id="";
  String password="";
  List<int> relatedGroupsId = [
    1,2,3
  ];

  User({
    required this.uid,
    required this.name,
    required this.id,
    required this.password,
  });

  User.fromJson(dynamic json) {
    uid = json['uid'];
    name = json['name'];
    id = json['id'];
    password = json['password'];
    relatedGroupsId = json['relatedGroupsId'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = uid;
    map['name'] = name;
    map['id'] = id;
    map['password'] = password;
    map["relatedGroupsId"] = relatedGroupsId;
    return map;
  }


}