import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit , WeatherState>(
            builder: (context , state) {
              return MaterialApp(
                theme: ThemeData(
                  primarySwatch: getThemeColor(
                      BlocProvider
                          .of<GetWeatherCubit>(context)
                          .weatherModel
                          ?.condition),
                ),
                //darkTheme: ThemeData.dark(useMaterial3: true),
                debugShowCheckedModeBanner: false,
                home: const HomeView(),
              );
            }
          ),
        ));
  }
}

   MaterialColor getThemeColor(String? condition) {
     if (condition == null)
     {
       return Colors.blueGrey;
     }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy rain possible':
    case 'Light drizzle':
    case 'Patchy light drizzle':
    case 'Patchy light rain':
    case 'Light rain':
    case 'Patchy light rain with thunder':
    case 'Light rain shower':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain with thunder':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Patchy sleet possible':
    case 'Freezing drizzle':
    case 'Light sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet':
    case 'Heavy freezing drizzle':
    case 'Moderate or heavy freezing rain':
    case 'Patchy rain nearby':
    case 'Heavy freezing rain':
      return Colors.lightBlue;
    case 'Patchy snow possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Light snow':
    case 'Patchy light snow':
    case 'Patchy light snow with thunder':
    case 'Light snow showers':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Moderate or heavy snow with thunder':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
    case 'Ice pellets':
      return Colors.blueGrey;
    default:
      return Colors.blue;
  }
}
