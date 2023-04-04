//EXAMPLE

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:my_app/data/user_repository.dart';
// import 'package:my_app/models/user.dart';
//
// // Define the events for the UserBloc
// abstract class UserEvent {}
//
// class LoadUserEvent extends UserEvent {}
//
// // Define the state for the UserBloc
// class UserState {
//   final User user;
//   final bool isLoading;
//   UserState({this.user, this.isLoading = false});
// }
//
// // Define the UserBloc class
// class UserBloc extends Bloc<UserEvent, UserState> {
//   final UserRepository userRepository;
//
//   UserBloc(this.userRepository) : super(UserState());
//
//   @override
//   Stream<UserState> mapEventToState(UserEvent event) async* {
//     if (event is LoadUserEvent) {
//       yield state.copyWith(isLoading: true);
//       try {
//         final user = await userRepository.getUser();
//         yield state.copyWith(user: user, isLoading: false);
//       } catch (e) {
//         yield state.copyWith(isLoading: false);
//         // Handle error state
//       }
//     }
//   }
// }