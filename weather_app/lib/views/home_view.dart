import 'package:flutter/material.dart';
import 'package:weather_app/views/search_view.dart';

class Adam {
  String name = 'Timur';
  int age = 123;
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

String? name;
List<String> names = [
  'Kubat',
];
Set<String> name1 = {''};
Map<String, String> map = {'': ''};

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.near_me,
            size: 40,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchView()));
                },
                icon: Icon(
                  Icons.location_city,
                  size: 40,
                ))
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 90,
                left: 40,
                child: Text(
                  '8°C',
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 150,
                child: Text(
                  ' ⛅',
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 150,
                child: Text(
                  ' ⛅',
                  style: TextStyle(
                    fontSize: 75,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 220,
                left: 100,
                right: 0,
                child: Text(
                  'Jiluu \n kiyinip 👕   \n chyk',
                  style: TextStyle(
                    fontSize: 55,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Bishkek',
                  style: TextStyle(
                    fontSize: 55,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
