

import 'package:dio/dio.dart';

import '../domain/event.dart';

class EventAPI{
  final dio = Dio(BaseOptions(
    baseUrl: "https://localhost:8080/event"
  ));

  //그룹id로 이벤트조회
  Future<Event?> getEventByGroup(int groupId) async {

    Response response = await dio.get("/group");

    if (response.statusCode == 200) {
      final json = response.data as Map<String, dynamic>;
      Event event = Event.fromJson(json);

      return event;
    }
    else {
      //error 화면을 띄우는 것도 방법
      return null;
    }

  }

  //user_id로 host 이벤트 조회
  Future<List<Event?>> getEventsByHost(int userId) async {

    Response response = await dio.get("/host");

    if (response.statusCode == 200) {
      final jsonList = response.data as List<Map<String, dynamic>>;
      List<Event> eventList = jsonList.map((json) => Event.fromJson(json)).toList();

      return eventList;
    }
    else {
      //error message
      return [];
    }

  }
  //user_id로 partis 이벤트 조회
  Future<List<Event>> getEventsByPartis(int userId) async {

    Response response = await dio.get("/partis");

    if (response.statusCode == 200) {
      final jsonList = response.data as List<Map<String, dynamic>>;
      List<Event> eventList = jsonList.map((json) => Event.fromJson(json)).toList();

      return eventList;
    }
    else {
      //error message
      return [];
    }

  }


}