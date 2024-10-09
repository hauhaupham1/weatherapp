import 'dart:convert';

class Main {
  double temp;
  double feels_like;
  double temp_min;
  double temp_max;
  int pressure;
  int humidity;
  int sea_level;
  int grnd_level;

  Main({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.humidity,
    required this.sea_level,
    required this.grnd_level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'temp': temp,
      'feels_like': feels_like,
      'temp_min': temp_min,
      'temp_max': temp_max,
      'pressure': pressure,
      'humidity': humidity,
      'sea_level': sea_level,
      'grnd_level': grnd_level,
    };
  }

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] as double,
      feels_like: map['feels_like'] as double,
      temp_min: map['temp_min'] as double,
      temp_max: map['temp_max'] as double,
      pressure: map['pressure'] as int,
      humidity: map['humidity'] as int,
      sea_level: map['sea_level'] as int,
      grnd_level: map['grnd_level'] as int,
    );
  }

  String toJson() => json.encode(toMap());
  factory Main.fromJson(String source) =>
      Main.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Weather {
  int id;
  String main;
  String description;

  Weather({
    required this.id,
    required this.main,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'main': main,
      'description': description,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      id: map['id'] as int,
      main: map['main'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Wind {
  double speed;
  int deg;
  double gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'speed': speed,
      'deg': deg,
      'gust': gust,
    };
  }

  factory Wind.fromMap(Map<String, dynamic> map) {
    return Wind(
      speed: map['speed'] as double,
      deg: map['deg'] as int,
      gust: map['gust'] as double,
    );
  }

  String toJson() => json.encode(toMap());
  factory Wind.fromJson(String source) =>
      Wind.fromMap(json.decode(source) as Map<String, dynamic>);
}

class WeatherModel {
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  int id;
  String name;
  int cod;
  WeatherModel({
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.id,
    required this.name,
    required this.cod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'weather': weather.map((x) => x.toMap()).toList(),
      'base': base,
      'main': main.toMap(),
      'visibility': visibility,
      'wind': wind.toMap(),
      'id': id,
      'name': name,
      'cod': cod,
    };
  }

  factory WeatherModel.fromMap(Map<String, dynamic> map) {
    return WeatherModel(
      weather:
          List<Weather>.from(map['weather']?.map((x) => Weather.fromMap(x))),
      base: map['base'] as String,
      main: Main.fromMap(map['main']),
      visibility: map['visibility'] as int,
      wind: Wind.fromMap(map['wind']),
      id: map['id'] as int,
      name: map['name'] as String,
      cod: map['cod'] as int,
    );
  }
  String toJson() => json.encode(toMap());
  factory WeatherModel.fromJson(String source) =>
      WeatherModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
