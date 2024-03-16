import 'package:weather/models/weather_model.dart';

class WeatherState{}
class InitialState extends WeatherState{}
class WeatherLoadedState extends WeatherState{
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}
class WeatherFailureState extends WeatherState{
  final String errMessage;

  WeatherFailureState(this.errMessage);
}




//  خطوات الcubit

// 1- create states
//                3 states   extend 1 state

// 2- create cubit
//             extend cubit <state>

// 3- create function
//            +emit 3 states

// 4- provide cubit
//           to homeview and searchview
//                 => materialapp in main.dart
//                       =>Blocprovider

// 5- integrate cubit
// 6- trigger cubit