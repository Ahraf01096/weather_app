import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/get_weather_cubit/get_weather_cubit.dart';
import '../main.dart';
import '../models/weather_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
    BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search city'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  getThemeColor(weatherModel.condition)[200]!,
                  getThemeColor(weatherModel.condition)[50]!,
                ]
            )),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              onFieldSubmitted: (value)  {
              var getWeatherCubit =  BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
                Navigator.pop(context);
              },
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                labelText: 'Search',
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
