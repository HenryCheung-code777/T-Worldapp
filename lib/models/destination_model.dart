import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tworld/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  LatLng locationCoords;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.locationCoords,
  });
}

List<Activity> activities_venice = [
  Activity(
    imageUrl: 'assets/images/JewishMuseum.jpg',
    name: 'Jewish Museum of Venice',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 250,
  ),
  Activity(
    imageUrl: 'assets/images/GalleriaGiorgio.jpg',
    name: "Galleria Giorgio Franchetti alla Ca' d'Oro",
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 270,
  ),
  Activity(
    imageUrl: 'assets/images/PeggyGuggenheim.jpg',
    name: 'Peggy Guggenheim Collection',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 300,
  ),
];

List<Activity> activities_paris = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'Eiffel Tower',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 230,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'The Louvre Art Museum',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 310,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Walk Along The Champs-Elysees',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 275,
  ),
];

List<Activity> activities_china = [
  Activity(
    imageUrl: 'assets/images/ForbiddenCity.jpg',
    name: 'Forbidden City',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 230,
  ),
  Activity(
    imageUrl: 'assets/images/TempleofHeaven.jpg',
    name: 'Temple of Heaven',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 220,
  ),
  Activity(
    imageUrl: 'assets/images/GreatWallofChina.jpg',
    name: 'Great Wall of China',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 190,
  ),
];

List<Activity> activities_japan = [
  Activity(
    imageUrl: 'assets/images/TokyoNationalMuseum.jpg',
    name: 'Tokyo National Museum',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 230,
  ),
  Activity(
    imageUrl: 'assets/images/NezuMuseum.jpg',
    name: 'Nezu Museum',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 220,
  ),
  Activity(
    imageUrl: 'assets/images/MoriArtMuseum.jpg',
    name: 'Mori Art Museum',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 253,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities_venice,
      locationCoords: LatLng(
        45.438759,
        12.327145,),
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities_paris,
    locationCoords: LatLng(
      48.864716,
      2.349014,),
  ),
  Destination(
    imageUrl: 'assets/images/china.jpg',
    city: 'Bei Jing',
    country: 'China',
    description: 'Visit China for an amazing and unforgettable adventure.',
    activities: activities_china,
    locationCoords: LatLng(
      39.916668,
      116.383331,),
  ),
  Destination(
    imageUrl: 'assets/images/japan.jpg',
    city: 'Tokyo',
    country: 'Japan',
    description: 'Visit Japan for an amazing and unforgettable adventure.',
    activities: activities_japan,
    locationCoords: LatLng(
      35.652832,
      139.839478,),
  )
];