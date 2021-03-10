import 'package:flutter/material.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WeatherForecast());
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Weather Forecast'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Enter city Name',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              _cityDetail(),
              SizedBox(height: 25.0),
              _tempDetail(),
              SizedBox(height: 25.0),
              _extraWeatherDetail(),
              SizedBox(height: 50.0),
              _sevenDay(),
              SizedBox(height: 8.0),
              _listView(),
            ],
          ),
        ),
      ),
    );
  }
}

Column _cityDetail() {
  return Column(
    children: <Widget>[
      Text(
        'Kharkivska Oblast\', UA',
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w300),
      ),
      SizedBox(
        height: 10.0,
      ),
      Text(
        'Thursday, Apr 09, 2020',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
      )
    ],
  );
}

Row _tempDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(Icons.wb_sunny, size: 80.0, color: Colors.white),
      Column(children: <Widget>[
        Text(
          '16 °C',
          style: TextStyle(
              color: Colors.white, fontSize: 60, fontWeight: FontWeight.w100),
        ),
        Text(
          'sunny'.toUpperCase(),
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
        )
      ])
    ],
  );
}

Padding _extraWeatherDetail() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 22.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '5',
                style: TextStyle(color: Colors.white),
              ),
              Text('km/hr', style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '5',
                style: TextStyle(color: Colors.white),
              ),
              Text('km/hr', style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Colors.white,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '5',
                style: TextStyle(color: Colors.white),
              ),
              Text('km/hr', style: TextStyle(color: Colors.white))
            ],
          ),
        ),
      ],
    ),
  );
}

Row _sevenDay() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        '7-day weather forecast'.toUpperCase(),
        style: TextStyle(
            color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w200),
      )
    ],
  );
}

Container _listView() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    height: 140.0,
    child: ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 210.0,
      children: <Widget>[
        _listTile("Thursday", 16, Icons.wb_sunny),
        _listTile("Friday", 18 , Icons.beach_access),
        _listTile("Saturday", 13, Icons.wb_sunny),
        _listTile("Sunday", 12, Icons.wb_sunny),
        _listTile("Monday", 17, Icons.wb_sunny),
        _listTile("Tuesday", 14, Icons.beach_access),
        _listTile("Wednesday", 12, Icons.cloud),
      ],
    ),
  );
}

Padding _listTile(String day, int temp, IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 4.0),
    child: Container(
      color: Colors.white24,
      child: ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 5.0),
              Text("$day",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                      fontSize: 32.0)),
              SizedBox(height: 16.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("$temp °C",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 32.0)),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 38.0,
                    )
                  ])
            ],
          )),
    ),
  );
}
