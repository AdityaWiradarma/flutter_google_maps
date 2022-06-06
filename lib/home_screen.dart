import 'package:flutter/material.dart';
import 'package:flutter_google_maps/screens/gotolocation_screen.dart';
import 'package:flutter_google_maps/screens/location_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GMaps"),
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return const SimpleMapScreen();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                        child: Image.asset("assets/images/lokasi.png"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Go to Undiksha", style: TextStyle(fontSize: 10))
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                          return const CurrentLocationScreen();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                        child: Image.asset("assets/images/lokasi rumah.jpg"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text("Lokasi Sekarang", style: TextStyle(fontSize: 10))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
