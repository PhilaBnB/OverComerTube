import 'package:flutter_bloc/flutter_bloc.dart';

///宣告MyEvent變數
enum MyEvent { eventA, eventB, eventC, EVENT_ME}

///宣告MyState變數(類別)
abstract class MyState{}

///宣告MyState子變數(類別)
class StateA extends MyState{}
class StateB extends MyState{}
class StateC extends MyState{}
class StateME extends MyState{}

///在MyBloc類別中，把Event映射到state上
///讓event與state有對應關係
class MyBloc extends Bloc< MyEvent, MyState >{
  MyBloc() : super(StateA());

  @override
  Stream<MyState> mapEventToState(MyEvent event) async*{
    switch (event) {
      case MyEvent.eventA:
        yield StateA();
        break;

      case MyEvent.eventB:
        yield StateB();
        break;

      case MyEvent.eventC:
        yield StateC();
        break;

      case MyEvent.EVENT_ME:
        yield StateME();
        break;

    }
  }
}