import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MappCompne());
}

class MappCompne extends StatefulWidget {
  @override
  _MappCompneState createState() => _MappCompneState();
}

class _MappCompneState extends State<MappCompne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var long = "longitude";
  var lat = "latitude";
  void getlocation() async {
    LocationPermission per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied ||
        per == LocationPermission.deniedForever) {
      print("permission denied");
      LocationPermission per1 = await Geolocator.requestPermission();
    } else {
      Position currentLoc = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      setState(() {
        long = currentLoc.longitude.toString();
        lat = currentLoc.latitude.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "GET",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              "Locathion in Comapny",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('lib/assets/view/image/68035-heart.json',width: 60,height: 60),
            Text(
              "logitude : " + long,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              "latitude : " + lat,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            MaterialButton(
              onPressed: getlocation,
              color: Colors.black,
              child: Text(
                "Get Location",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


