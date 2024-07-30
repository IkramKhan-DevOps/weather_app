class DailySummary {
  final String dayName;
  final String date;
  final double temperature;
  final String weatherIcon;
  final int weatherId;

  DailySummary({
    required this.dayName,
    required this.date,
    required this.temperature,
    required this.weatherIcon,
    required this.weatherId,
  });
}

class HourlyData {
  final String time;
  final double temperature;
  final String weatherIcon;
  final int weatherId;

  HourlyData({
    required this.time,
    required this.temperature,
    required this.weatherIcon,
    required this.weatherId,
  });
}


class HourlyForecastModel {
  final String cod;
  final int message;
  final int cnt;
  final List<HourlyWeather> list;
  final City city;

  HourlyForecastModel({
    required this.cod,
    required this.message,
    required this.cnt,
    required this.list,
    required this.city,
  });

  factory HourlyForecastModel.fromJson(Map<String, dynamic> json) {
    return HourlyForecastModel(
      cod: json['cod'] ?? '',
      message: json['message'] ?? 0,
      cnt: json['cnt'] ?? 0,
      list: List<HourlyWeather>.from(json['list'].map((x) => HourlyWeather.fromJson(x))),
      city: City.fromJson(json['city']),
    );
  }
}

class HourlyWeather {
  final int dt;
  final Main main;
  final List<Weather> weather;
  final Clouds clouds;
  final Wind wind;
  final int visibility;
  final double pop;
  final Rain? rain;
  final Sys sys;
  final String dtTxt;

  HourlyWeather({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibility,
    required this.pop,
    this.rain,
    required this.sys,
    required this.dtTxt,
  });

  factory HourlyWeather.fromJson(Map<String, dynamic> json) {
    return HourlyWeather(
      dt: json['dt'] ?? 0,
      main: Main.fromJson(json['main']),
      weather: List<Weather>.from(json['weather'].map((x) => Weather.fromJson(x))),
      clouds: Clouds.fromJson(json['clouds']),
      wind: Wind.fromJson(json['wind']),
      visibility: json['visibility'] ?? 0,
      pop: (json['pop'] ?? 0).toDouble(),
      rain: json['rain'] != null ? Rain.fromJson(json['rain']) : null,
      sys: Sys.fromJson(json['sys']),
      dtTxt: json['dt_txt'] ?? '',
    );
  }
}

class City {
  final int id;
  final String name;
  final Coord coord;
  final String country;
  final int population;
  final int timezone;
  final int sunrise;
  final int sunset;

  City({
    required this.id,
    required this.name,
    required this.coord,
    required this.country,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      coord: Coord.fromJson(json['coord']),
      country: json['country'] ?? '',
      population: json['population'] ?? 0,
      timezone: json['timezone'] ?? 0,
      sunrise: json['sunrise'] ?? 0,
      sunset: json['sunset'] ?? 0,
    );
  }
}

class Coord {
  final double lat;
  final double lon;

  Coord({required this.lat, required this.lon});

  factory Coord.fromJson(Map<String, dynamic> json) {
    return Coord(
      lat: (json['lat'] ?? 0).toDouble(),
      lon: (json['lon'] ?? 0).toDouble(),
    );
  }
}

class Main {
  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int pressure;
  final int humidity;
  final int? seaLevel;
  final int? grndLevel;

  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    this.seaLevel,
    this.grndLevel,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: (json['temp'] ?? 0).toDouble(),
      feelsLike: (json['feels_like'] ?? 0).toDouble(),
      tempMin: (json['temp_min'] ?? 0).toDouble(),
      tempMax: (json['temp_max'] ?? 0).toDouble(),
      pressure: json['pressure'] ?? 0,
      humidity: json['humidity'] ?? 0,
      seaLevel: json['sea_level'] != null ? json['sea_level'] : 0,
      grndLevel: json['grnd_level'] != null ? json['grnd_level'] : 0,
    );
  }
}

class Weather {
  final int id;
  final String main;
  final String description;
  final String icon;

  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      id: json['id'] ?? 0,
      main: json['main'] ?? '',
      description: json['description'] ?? '',
      icon: json['icon'] ?? '',
    );
  }
}

class Clouds {
  final int all;

  Clouds({required this.all});

  factory Clouds.fromJson(Map<String, dynamic> json) {
    return Clouds(
      all: json['all'] ?? 0,
    );
  }
}

class Wind {
  final double speed;
  final int deg;
  final double gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  factory Wind.fromJson(Map<String, dynamic> json) {
    return Wind(
      speed: (json['speed'] ?? 0).toDouble(),
      deg: json['deg'] ?? 0,
      gust: (json['gust'] ?? 0).toDouble(),
    );
  }
}

class Rain {
  final double threeHours;

  Rain({required this.threeHours});

  factory Rain.fromJson(Map<String, dynamic> json) {
    return Rain(
      threeHours: (json['3h'] ?? 0).toDouble(),
    );
  }
}

class Sys {
  final String pod;

  Sys({required this.pod});

  factory Sys.fromJson(Map<String, dynamic> json) {
    return Sys(
      pod: json['pod'] ?? '',
    );
  }
}
