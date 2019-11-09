import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/star_wars_model.dart';

class Home extends StatefulWidget {
  final dynamic data;
  Home(this.data);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<StarWarsModel> starWarsModelList = List<StarWarsModel>();
  @override
  void initState() {
    super.initState();
    starWarsModelList =
        StarWarsModel().decodeDeceserializeJsonString(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: starWarsModelList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              elevation: 20,
              color: Colors.lightGreen,
              child: Padding(
                padding: const EdgeInsets.all(13),
                child: Column(
                  children: <Widget>[
                    Text(
                      'name ' + starWarsModelList[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'mass ' + starWarsModelList[index].mass,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'height ' + starWarsModelList[index].height,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'hair color ' + starWarsModelList[index].hair_color,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'gender ' + starWarsModelList[index].gender,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'eye Color ' + starWarsModelList[index].eye_color,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'skin Color ' + starWarsModelList[index].skin_color,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'birth Year ' + starWarsModelList[index].birth_year,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
