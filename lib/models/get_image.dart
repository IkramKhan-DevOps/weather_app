// Image paths
const String thunderstormImage = 'assets/images/1.png';
const String rainImage = 'assets/images/3.png';
const String snowImage = 'assets/images/4.png';
const String windyImage = 'assets/images/5.png';
const String partlyCloudyImage = 'assets/images/7.png';
const String cloudyImage = 'assets/images/8.png';
const String windyWithCloudImage = 'assets/images/9.png';
const String sunnyImage = 'assets/images/6.png';
const String lightRainImage = 'assets/images/2.png';

String getImage(double temperature) {
  if (temperature < 0) {
    return snowImage; // Snow
  } else if (temperature >= 0 && temperature < 10) {
    return cloudyImage; // Cloudy
  } else if (temperature >= 10 && temperature < 20) {
    return partlyCloudyImage; // Partly Cloudy
  } else if (temperature >= 20 && temperature < 30) {
    return sunnyImage; // Sunny
  } else if (temperature >= 30 && temperature < 40) {
    return lightRainImage; // Light Rain
  } else {
    return thunderstormImage; // Thunderstorm
  }
}
