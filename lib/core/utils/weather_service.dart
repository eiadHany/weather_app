import 'package:dio/dio.dart';
import 'package:weather/features/home/view%20model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final baseUrl = 'http://api.weatherapi.com/v1';
  final apiKey = '6a0b107bcbba42efb98131424232609%20';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=%$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage =
          e.response?.data['error']['message'] ?? 'Oops there was an error';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception('Oops there was an error');
    }
  }
}
