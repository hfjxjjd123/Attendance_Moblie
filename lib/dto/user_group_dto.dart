class UserGroupDto{
  List<int> hostGroupId=[];
  List<int> partisGroupId=[];

  UserGroupDto.fromJson(dynamic json) {
    hostGroupId = json['hostGroupId'];
    partisGroupId = json['partisGroupId'];
  }
}