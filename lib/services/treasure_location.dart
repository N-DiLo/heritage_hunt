import 'dart:math';

import 'package:ar_test/database.dart';
import 'package:ar_test/models/treasures.dart';

// Generates the random point within a circle of a given radius around a center
Map<String, double> getRandomPosition(double centerLat, double centerLon, double maxDistance, String rarity) {
  final random = Random();
  double distance;

  // Define distance range based on rarity
  switch (rarity) {
    case 'common':
      distance = random.nextDouble() * 5 + 5; // 5-10 meters
      break;
    case 'rare':
      distance = random.nextDouble() * 10 + 10; // 10-20 meters
      break;
    case 'very rare':
      distance = random.nextDouble() * 10 + 20; // 20-30 meters
      break;
    default:
      distance = random.nextDouble() * 5 + 5; // Default to common distance
      break;
  }

  // Random angle in radians
  double angle = random.nextDouble() * 2 * pi;
  // Calculate new latitude and longitude
  double latOffset = distance * cos(angle) / 111320; // Rough conversion to degrees
  double lonOffset = distance * sin(angle) / (111320 * cos(centerLat * pi / 180)); // Adjust for latitude

  double newLat = centerLat + latOffset;
  double newLon = centerLon + lonOffset;

  return {'latitude': newLat, 'longitude': newLon};
}


void placeArtifacts(double playerLat, double playerLon) {
  List<Treasure> artifacts = huntTreasures;
  for (var artifact in artifacts) {
    Map<String, double> position = getRandomPosition(
        playerLat,
        playerLon,
        30, // Maximum distance to consider
        artifact.rarity
    );

    print('Artifact ${artifact.id} will be placed at ${position['latitude']}, ${position['longitude']}');
    // Here you can store or use these positions as needed
  }
}