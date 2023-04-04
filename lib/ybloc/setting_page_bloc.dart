import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPageBloc extends Bloc<int, int> {
  SettingPageBloc() : super(0);

  @override
  Stream<int> mapEventToState(int event) async* {
    if (event == 0) {
      yield 0;
    } else if (event == 1) {
      yield 1;
    } else if (event == 2) {
      yield 2;
    } else if (event == 3) {
      yield 3;
    }
  }

}