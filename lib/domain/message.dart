class Message{
  String groupName="";
  String hostName="";
  String mateName="";
  String? notify; //아니어도 된다.
  int option=-1;
  String time="";

  Message({
    required this.groupName,
    required this.hostName,
    required this.mateName,
    this.notify,
    required this.option,
    required this.time
  });

  Message.fromJson(dynamic json) {
    groupName = json['groupName'];
    hostName = json['hostName'];
    mateName = json['mateName'];
    notify = json['notify'];
    option = json['option'];
    time = json['time'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    map['hostName'] = hostName;
    map['mateName'] = mateName;
    map['notify'] = notify;
    map['option'] = option;
    map['time'] = time;
    return map;
  }


}