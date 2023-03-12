

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gdsc_uos_atttendance/dto/user_group_dto.dart';

import '../domain/event.dart';

class EventApi{
  final dio = Dio(BaseOptions(
    baseUrl: "https://localhost:8080/user-group"
  ));

  //그룹id로 이벤트조회
  Future<UserGroupDto> getInvolvingGroup(int userId) async {

    Response response = await dio.get("/groups");

    if (response.statusCode == 200) {
      final json = jsonDecode(response.data);

      return UserGroupDto.fromJson(json);
    }
    else {
      //TODO error 처리로직 필요
      return UserGroupDto.fromJson(null);
    }

  }

  //user_id로 host 이벤트 조회
  Future<List<Event>> getRecentEvents(List<int> groupIds) async {

      Response response = await dio.post(
          "/events", data: groupIds
      );

      if(response.statusCode == 200){
        final data = response.data as List<dynamic>;
        return List<Event>.from(data.map((json)=>Event.fromJson(json)));

      }else{
        //TODO exception 처리
        return [];
      }

  }
  //user_id로 partis 이벤트 조회


}