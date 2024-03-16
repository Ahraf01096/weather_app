import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/main.dart';
import 'package:weather/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({Key? key, required this.weather}) : super(key: key);

  final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    weatherModel.image!.contains("https");
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
            colors: [
              getThemeColor(weatherModel.condition),
              getThemeColor(weatherModel.condition)[50]!,
              ]
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 70,left: 16,right: 16),
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weatherModel.cityName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                        "https:${weatherModel.image!}",
                      ),
                      Text(
                        '${weatherModel.temp.round()}°C',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${weatherModel.maxTemp.round()}°/',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '${weatherModel.minTemp.round()}°',
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    weatherModel.condition,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https:${weatherModel.image1!}",
                        ),
                        Column(
                          children: [
                            Text(weatherModel.date1,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18
                            )),
                            SizedBox(height: 10,),
                            Text(
                              weatherModel.condition1,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${weatherModel.maxTemp1.round()}° /',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '${weatherModel.minTemp1.round()}°',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https:${weatherModel.image2!}",
                        ),
                        Column(
                          children: [
                            Text(weatherModel.date2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                )),
                            SizedBox(height: 10,),
                            Text(
                              weatherModel.condition2,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${weatherModel.maxTemp2.round()}° /',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '${weatherModel.minTemp2.round()}°',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black12),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          "https:${weatherModel.image3!}",
                        ),
                        Column(
                          children: [
                            Text(weatherModel.date3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                )),
                            SizedBox(height: 10,),
                            Text(
                              weatherModel.condition3,
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${weatherModel.maxTemp3.round()}° /',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              '${weatherModel.minTemp3.round()}°',
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

DateTime stringToDateTime(String value) {
  return DateTime.parse(value);
}
