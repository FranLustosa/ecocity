// ignore_for_file: prefer_const_constructors

import 'package:app_ecocity/src/model/model_util.dart';
import 'package:app_ecocity/src/ui/theme/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

class OsmImplemetation extends StatefulWidget {
  const OsmImplemetation({
    super.key,
  });

  @override
  State<OsmImplemetation> createState() => _OSMState();
}

class _OSMState extends State<OsmImplemetation> {
  late final MapController mapController;
  Map<String, dynamic> tocantinsMap = {};
  List<GeoPoint> geoPointList = [];
  Map<String, dynamic> geoMap = {};

  @override
  void initState() {
    super.initState();
    mapController = MapController(
      initPosition: GeoPoint(
        latitude: -10.1689,
        longitude: -48.3317,
      ),
    );
    cathGeoPoitns();
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OSMFlutter(
        mapIsLoading: mapIsLoading(
          context,
          MediaQuery.of(context).size.width / 10,
          MediaQuery.of(context).size.height / 7,
        ),
        onMapIsReady: (mapEvent) async {
          await limitAreaMap();
          await drawnTocantinsMap();
          await geoPointsMap();
        },
        onGeoPointClicked: (geopoint) async {
          final Uri url = Uri.parse(
              'https://www.google.com/maps/@${geopoint.latitude},${geopoint.longitude},15z');
          if (await canLaunch(url.toString())) {
            await launch(url.toString());
          } else {
            throw 'Could not launch $url';
          }
        },
        controller: mapController,
        osmOption: const OSMOption(
          zoomOption: ZoomOption(
            initZoom: 6.48505,
            minZoomLevel: 6.48505,
            maxZoomLevel: 19,
          ),
          showContributorBadgeForOSM: true,
          showDefaultInfoWindow: true,
          showZoomController: false,
        ),
      ),
    );
  }

  Widget mapIsLoading(
    BuildContext context,
    double width,
    double height,
  ) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          color: CustomColors.primaryColor,
        ),
      ),
    );
  }

  Future<void> drawnTocantinsMap() async {
    geoMap.forEach(
      (cityName, geoPoitsCity) async {
        await mapController.drawRoadManually(
          geoPoitsCity,
          customRoadOption,
        );
      },
    );
  }

  RoadOption customRoadOption = const RoadOption(
    roadColor: CustomColors.borderColor,
    roadWidth: 1,
    zoomInto: false,
  );

  Future<void> cathGeoPoitns() async {
    List mapList = [];
    List<dynamic> coordenandas;
    tocantinsMap = await jsonRead(pathFile: "assets/json/map.json");
    tocantinsMap.map(
      (key, value) {
        if (key.contains("features")) {
          mapList = value;
          if (mapList.isNotEmpty) {
            for (var mapCity in mapList) {
              String cityName = mapCity["properties"]["name"];
              coordenandas = mapCity['geometry']['coordinates'];
              List<GeoPoint> cityGeoPoints = [];
              geoMap.putIfAbsent(cityName, () => []);
              for (var majorCoords in coordenandas) {
                for (var minorCoords in majorCoords) {
                  GeoPoint myCoords = GeoPoint(
                    longitude: minorCoords[0],
                    latitude: minorCoords[1],
                  );
                  cityGeoPoints.add(myCoords);
                }
              }
              geoMap[cityName] = cityGeoPoints;
            }
          }
        }
        return MapEntry(key, value);
      },
    );
  }

  Future<dynamic> geoPointsMap() async {
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1800044,
          longitude: -48.3398663,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(Icons.location_on, color: CustomColors.primaryColor),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.199413,
          longitude: -48.3137959,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(Icons.location_on, color: CustomColors.primaryColor),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.2170479,
          longitude: -48.3347741,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(Icons.location_on, color: CustomColors.primaryColor),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1826897,
          longitude: -48.3469972,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.2074703,
          longitude: -48.3469764,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1947066,
          longitude: -48.3273138,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.2184872,
          longitude: -48.3402029,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.2461177,
          longitude: -48.345443,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.182342,
          longitude: -48.336706,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1766799,
          longitude: -48.3470613,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1823224,
          longitude: -48.3355458,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 45,
          ),
        ));
    mapController.addMarker(
        GeoPoint(
          latitude: -10.1817440,
          longitude: -48.3166820,
        ),
        markerIcon: MarkerIcon(
          icon: Icon(
            Icons.location_on,
            color: CustomColors.primaryColor,
            size: 30,
          ),
        ));
        
  }

  Future<void> limitAreaMap() async {
    await mapController.limitAreaMap(
      BoundingBox(
        east: -45.54,
        north: -4.91,
        south: -13.60,
        west: -50.98,
      ),
    );
  }
}
