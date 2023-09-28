class WeatherModel {
  final String cityName;
  final DateTime date;
  final String weatherCondition;
  final int temp;
  final String image;
  final String wind;
  final double humidity;
  final double pressure;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.weatherCondition,
      required this.temp,
      required this.image,
      required this.wind,
      required this.humidity,
      required this.pressure});

  factory WeatherModel.fromjson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      date: json['current']['last_updated'],
      weatherCondition: json['current']['condition']['text'],
      temp: json['current']['temp_c'],
      image: json['current']['condition']['icon'],
      wind: json['wind_kph'],
      humidity: json['humidity'],
      pressure: json['pressure_in'],
    );
  }
}
