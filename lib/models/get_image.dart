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

// Map of weather descriptions to image paths
final Map<String, String> weatherImageMap = {
  'Thunderstorm': thunderstormImage,
  'Rain': rainImage,
  'Snow': snowImage,
  'Windy': windyImage,
  'Partly Cloudy': partlyCloudyImage,
  'Cloudy': cloudyImage,
  'Windy with Clouds': windyWithCloudImage,
  'Sunny': sunnyImage,
  'Light Rain': lightRainImage,
};

// Function to get image based on weather description
String getImage(String description) {
  return weatherImageMap[description] ??
      thunderstormImage; // Default to thunderstormImage if description not found
}
