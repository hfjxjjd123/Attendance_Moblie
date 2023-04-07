

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gdsc_uos_atttendance/zdto/user_group_dto.dart';

import '../zdomain/event.dart';

class UserRestApi{
  final dio = Dio(BaseOptions(
      baseUrl: "https://25512d78-8061-4e8f-8800-1c509cbfacbb.mock.pstmn.io/user"
  ));

  //사용자 닉네임 변경
  Future<String?> modifyUsername(String newName) async {

    Map<String, String> requestBody = {
      'newName': newName,
    };

    Response response = await dio.post("/modify-name", data: requestBody);

    if (response.statusCode == 200) {
      final responseString = response.data;
      if(responseString.contains("success")){
        return responseString.substring(10);
      }else{
        return null;
      }
    }
    else {
      //TODO error 처리로직 필요
      print("400 error");
      return null;
    }

  }


}