class Host{
  int id= 0;
  int userId=0;
  int groupId=0;

  Host({
    required this.id,
    required this.userId,
    required this.groupId
  });

  Host.fromJson(dynamic json) {
    id = json['id'];
    userId = json['userId'];
    groupId = json['groupId'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['usreId'] = userId;
    map['groupId'] = groupId;
    return map;
  }


}