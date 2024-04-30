part of 'stadium_seat_page_cubit.dart';

abstract class StadiumSeatPageCubitState {}

class StadiumSeatPageInitialState extends StadiumSeatPageCubitState {}

class StadiumSeatPageMainState extends StadiumSeatPageCubitState {
  StadiumSeatPageMainModel mainModel;

  StadiumSeatPageMainState(this.mainModel);
}

