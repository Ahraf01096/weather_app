import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/views/search_view.dart';

import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: const Text('Weather App'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const SearchView();
                  }));
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is InitialState) {
              return const NoWeatherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoBody(
                weather: state.weatherModel,
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: const Text(
                      'opps there was an error, ',
                      style: TextStyle(
                          color: Colors.red, fontSize: 30, fontFamily: 'Roboto'),
                    ),
                  ),
                  Center(
                    child: const Text(
                      'try again',
                      style: TextStyle(
                          color: Colors.red, fontSize: 30, fontFamily: 'Roboto'),
                    ),
                  ),
                ],
              );
            }
          },
        ));
  }
}
