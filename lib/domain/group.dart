class Group{
  int id= 0;
  String name="";
  String notification="";

  Group({
    required this.id,
    required this.name,
    required this.notification,
  });

  Group.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    notification = json['notification'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['notification'] = notification;
    return map;
  }


}