class WeatherModel {
  final String cityName;
  final DateTime date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String condition;

  final String date1;
  final String? image1;
  final double maxTemp1;
  final double minTemp1;
  final String condition1;

  final String date2;
  final String? image2;
  final double maxTemp2;
  final double minTemp2;
  final String condition2;

  final String date3;
  final String? image3;
  final double maxTemp3;
  final double minTemp3;
  final String condition3;


  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.condition,

        required this.maxTemp1,
        required this.minTemp1,
        required this.condition1,
        this.image1,
        required this.date1,

        required this.maxTemp2,
        required this.minTemp2,
        required this.condition2,
        this.image2,
        required this.date2,

        required this.maxTemp3,
        required this.minTemp3,
        required this.condition3,
        this.image3,
        required this.date3

      }
      );
  
  factory WeatherModel.fromJson(json)
  {
    return WeatherModel(
        cityName: json["location"]["name"],
        date: DateTime.parse(json["current"]["last_updated"]),
        temp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
        maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
        minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
        condition: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      image: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],

      date1: json["forecast"]["forecastday"][1]["date"],
      maxTemp1: json["forecast"]["forecastday"][1]["day"]["maxtemp_c"],
      minTemp1: json["forecast"]["forecastday"][1]["day"]["mintemp_c"],
      condition1: json["forecast"]["forecastday"][1]["day"]["condition"]["text"],
      image1: json["forecast"]["forecastday"][1]["day"]["condition"]["icon"],

      date2: json["forecast"]["forecastday"][2]["date"],
      maxTemp2: json["forecast"]["forecastday"][2]["day"]["maxtemp_c"],
      minTemp2: json["forecast"]["forecastday"][2]["day"]["mintemp_c"],
      condition2: json["forecast"]["forecastday"][2]["day"]["condition"]["text"],
      image2: json["forecast"]["forecastday"][2]["day"]["condition"]["icon"],

      date3: json["forecast"]["forecastday"][3]["date"],
      maxTemp3: json["forecast"]["forecastday"][3]["day"]["maxtemp_c"],
      minTemp3: json["forecast"]["forecastday"][3]["day"]["mintemp_c"],
      condition3: json["forecast"]["forecastday"][3]["day"]["condition"]["text"],
      image3: json["forecast"]["forecastday"][3]["day"]["condition"]["icon"],


    );
  }
}
