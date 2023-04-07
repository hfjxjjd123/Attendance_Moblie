import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc_uos_atttendance/zconst/debug.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserState(username: "이학림", relatedGroups: [])){
   on<ModifyUsername>(_onUserEvent);
  }

  void _onUserEvent(ModifyUsername event, Emitter<UserState> emit) async {
    state.username = event.newUsername;
    emit(
      //TODO 여기 relatedGroups를 새로 만들면 안된다.
      state
    );
    logger.d(state.username);
  }

}

class UserState {
  String username;
  List<int> relatedGroups;

  UserState({required this.username, required this.relatedGroups});
}

abstract class UserEvent {}

class ModifyUsername extends UserEvent {
  String newUsername;
  ModifyUsername({required this.newUsername});
}