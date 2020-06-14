import 'package:ddaliveryflutter/view/main/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {

  @override
  MainState get initialState => MainState();

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    yield state;
  }
}