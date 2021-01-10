import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'List_Movie_info.dart';
import 'Movie_Info.dart';
import 'Car_Slider.dart';
import 'List_Files_Images.dart';

class MarvelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Upcoming Movies",
                style: TextStyle(
                    fontFamily: "Benton",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            CarSlider(), //Carousel SLider
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Phase One",
                style: TextStyle(
                    fontFamily: "Benton",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _PhaseOne(
                    image: Phase_1[0],
                    moviename: "Ironman",
                    length1: Ironman[0],
                    trailer1: Ironman[1],
                    date1: Ironman[2],
                    rate1: Ironman[3],
                    directed1: Ironman[4],
                    outline1: Ironman[5],
                  ),
                  _PhaseOne(
                    image: Phase_1[1],
                    moviename: "The Incredible Hulk",
                    length1: Hulk[0],
                    trailer1: Hulk[1],
                    date1: Hulk[2],
                    rate1: Hulk[3],
                    directed1: Hulk[4],
                    outline1: Hulk[5],
                  ),
                  _PhaseOne(
                    image: Phase_1[2],
                    moviename: "Ironman 2",
                    length1: Ironman2[0],
                    trailer1: Ironman2[1],
                    date1: Ironman2[2],
                    rate1: Ironman2[3],
                    directed1: Ironman2[4],
                    outline1: Ironman2[5],
                  ),
                  _PhaseOne(
                    image: Phase_1[3],
                    moviename: "The Courage is Immortal",
                    length1: Thor[0],
                    trailer1: Thor[1],
                    date1: Thor[2],
                    rate1: Thor[3],
                    directed1: Thor[4],
                    outline1: Thor[5],
                  ),
                  _PhaseOne(
                    image: Phase_1[4],
                    moviename: "The First Avenger",
                    length1: CapAmerica[0],
                    trailer1: CapAmerica[1],
                    date1: CapAmerica[2],
                    rate1: CapAmerica[3],
                    directed1: CapAmerica[4],
                    outline1: CapAmerica[5],
                  ),
                  _PhaseOne(
                    image: Phase_1[5],
                    moviename: "Avengers",
                    length1: Avgeners1[0],
                    trailer1: Avgeners1[1],
                    date1: Avgeners1[2],
                    rate1: Avgeners1[3],
                    directed1: Avgeners1[4],
                    outline1: Avgeners1[5],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Phase Two",
                style: TextStyle(
                    fontFamily: "Benton",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _PhaseTwo(
                    image: Phase_2[0],
                    moviename: "IronMan 3",
                    length1: IronMan3[0],
                    trailer1: IronMan3[1],
                    date1: IronMan3[2],
                    rate1: IronMan3[3],
                    directed1: IronMan3[4],
                    outline1: IronMan3[5],
                  ),
                  _PhaseTwo(
                    image: Phase_2[1],
                    moviename: "Thor: The Dark World",
                    length1: ThorDarkWorld[0],
                    trailer1: ThorDarkWorld[1],
                    date1: ThorDarkWorld[2],
                    rate1: ThorDarkWorld[3],
                    directed1: ThorDarkWorld[4],
                    outline1: ThorDarkWorld[5],
                  ),
                  _PhaseTwo(
                    image: Phase_2[2],
                    moviename: "Captain America: The WinterSoldier",
                    length1: CaptainAmericaTheWinterSoldier[0],
                    trailer1: CaptainAmericaTheWinterSoldier[1],
                    date1: CaptainAmericaTheWinterSoldier[2],
                    rate1: CaptainAmericaTheWinterSoldier[3],
                    directed1: CaptainAmericaTheWinterSoldier[4],
                    outline1: CaptainAmericaTheWinterSoldier[5],
                  ),
                  _PhaseTwo(
                    image: Phase_2[3],
                    moviename: "Guardians of the Galaxy",
                    length1: GuardiansOfTheGalaxy[0],
                    trailer1: GuardiansOfTheGalaxy[1],
                    date1: GuardiansOfTheGalaxy[2],
                    rate1: GuardiansOfTheGalaxy[3],
                    directed1: GuardiansOfTheGalaxy[4],
                    outline1: GuardiansOfTheGalaxy[5],
                  ),
                  _PhaseTwo(
                    image: Phase_2[4],
                    moviename: "Avengers: Age Of Ultron",
                    length1: AgeOfUltron[0],
                    trailer1: AgeOfUltron[1],
                    date1: AgeOfUltron[2],
                    rate1: AgeOfUltron[3],
                    directed1: AgeOfUltron[4],
                    outline1: AgeOfUltron[5],
                  ),
                  _PhaseTwo(
                    image: Phase_2[5],
                    moviename: "Ant Man",
                    length1: AntMan[0],
                    trailer1: AntMan[1],
                    date1: AntMan[2],
                    rate1: AntMan[3],
                    directed1: AntMan[4],
                    outline1: AntMan[5],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Phase Three",
                style: TextStyle(
                    fontFamily: "Benton",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _PhaseThree(
                    image: Phase_3[0],
                    moviename: "Captain America Civil War",
                    length1: CaptainAmericaCivilWar[0],
                    trailer1: CaptainAmericaCivilWar[1],
                    date1: CaptainAmericaCivilWar[2],
                    rate1: CaptainAmericaCivilWar[3],
                    directed1: CaptainAmericaCivilWar[4],
                    outline1: CaptainAmericaCivilWar[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[1],
                    moviename: "Doctor Strange",
                    length1: DoctorStrange[0],
                    trailer1: DoctorStrange[1],
                    date1: DoctorStrange[2],
                    rate1: DoctorStrange[3],
                    directed1: DoctorStrange[4],
                    outline1: DoctorStrange[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[2],
                    moviename: "Guardians Of Galaxy Volume 2",
                    length1: GuardiansOfGalaxyVolume2[0],
                    trailer1: GuardiansOfGalaxyVolume2[1],
                    date1: GuardiansOfGalaxyVolume2[2],
                    rate1: GuardiansOfGalaxyVolume2[3],
                    directed1: GuardiansOfGalaxyVolume2[4],
                    outline1: GuardiansOfGalaxyVolume2[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[3],
                    moviename: "Spider Man Homecoming",
                    length1: SpiderManHomeComing[0],
                    trailer1: SpiderManHomeComing[1],
                    date1: SpiderManHomeComing[2],
                    rate1: SpiderManHomeComing[3],
                    directed1: SpiderManHomeComing[4],
                    outline1: SpiderManHomeComing[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[4],
                    moviename: "Thor Ragnarok",
                    length1: ThorRagnorak[0],
                    trailer1: ThorRagnorak[1],
                    date1: ThorRagnorak[2],
                    rate1: ThorRagnorak[3],
                    directed1: ThorRagnorak[4],
                    outline1: ThorRagnorak[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[5],
                    moviename: "Black Panther",
                    length1: BlackPanthe[0],
                    trailer1: BlackPanthe[1],
                    date1: BlackPanthe[2],
                    rate1: BlackPanthe[3],
                    directed1: BlackPanthe[4],
                    outline1: BlackPanthe[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[6],
                    moviename: "Avengers: Infinity war",
                    length1: AvengersInfinityWar[0],
                    trailer1: AvengersInfinityWar[1],
                    date1: AvengersInfinityWar[2],
                    rate1: AvengersInfinityWar[3],
                    directed1: AvengersInfinityWar[4],
                    outline1: AvengersInfinityWar[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[7],
                    moviename: "Ant Man and the Wasp",
                    length1: AntManAndTheWasp[0],
                    trailer1: AntManAndTheWasp[1],
                    date1: AntManAndTheWasp[2],
                    rate1: AntManAndTheWasp[3],
                    directed1: AntManAndTheWasp[4],
                    outline1: AntManAndTheWasp[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[8],
                    moviename: "Captain Marvel",
                    length1: CaptainMarvel[0],
                    trailer1: CaptainMarvel[1],
                    date1: CaptainMarvel[2],
                    rate1: CaptainMarvel[3],
                    directed1: CaptainMarvel[4],
                    outline1: CaptainMarvel[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[9],
                    moviename: "Avengers: Endgame",
                    length1: AvengersTheEndGame[0],
                    trailer1: AvengersTheEndGame[1],
                    date1: AvengersTheEndGame[2],
                    rate1: AvengersTheEndGame[3],
                    directed1: AvengersTheEndGame[4],
                    outline1: AvengersTheEndGame[5],
                  ),
                  _PhaseThree(
                    image: Phase_3[10],
                    moviename: "Spiderman: Far From Home",
                    length1: SpidermanFarFromHome[0],
                    trailer1: SpidermanFarFromHome[1],
                    date1: SpidermanFarFromHome[2],
                    rate1: SpidermanFarFromHome[3],
                    directed1: SpidermanFarFromHome[4],
                    outline1: SpidermanFarFromHome[5],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "Phase Four",
                style: TextStyle(
                    fontFamily: "Benton",
                    fontSize: 30,
                    color: Colors.white,
                    letterSpacing: 1.0),
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _PhaseFour(
                    image: Phase_4[0],
                    moviename: "Shang Chi",
                  ),
                  _PhaseFour(
                    image: Phase_4[1],
                    moviename: "Thor: Love And Thunder",
                  ),
                  _PhaseFour(
                    image: Phase_4[2],
                    moviename: "Balck Widow",
                  ),
                  _PhaseFour(
                    image: Phase_4[3],
                    moviename: "Mulitiverse Of Madness",
                  ),
                  _PhaseFour(
                    image: Phase_4[4],
                    moviename: "Eternals",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _PhaseOne extends StatelessWidget {
  final image;
  final moviename;
  final length1, trailer1, date1, rate1, directed1, outline1;
  _PhaseOne(
      {this.image,
      this.moviename,
      this.length1,
      this.trailer1,
      this.date1,
      this.directed1,
      this.outline1,
      this.rate1});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      highlightColor: Colors.redAccent,
      onLongPress: () {
        Fluttertoast.showToast(
            msg: moviename,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0);
      },
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Movie_Info(
                      image_info: image,
                      Movie_name: moviename,
                      length: length1,
                      trailer: trailer1,
                      date: date1,
                      directed: directed1,
                      rate: rate1,
                      outline: outline1,
                    )));
      },
      child: Container(
        child: Card(
          color: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => new Container(
              child: Center(
                child: new CircularProgressIndicator(),
              ),
              width: 150,
            ),
            // ignore: non_constant_identifier_names
            errorWidget: (BuildContext, url, error) => Icon(Icons.error),
            fadeInCurve: Curves.easeIn,
            fadeInDuration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}

class _PhaseTwo extends StatelessWidget {
  final image;
  final moviename;
  final length1, trailer1, date1, rate1, directed1, outline1;

  const _PhaseTwo(
      {Key key,
      this.image,
      this.moviename,
      this.length1,
      this.trailer1,
      this.date1,
      this.directed1,
      this.outline1,
      this.rate1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      highlightColor: Colors.redAccent,
      onLongPress: () {
        Fluttertoast.showToast(
            msg: moviename,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0);
      },
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Movie_Info(
                      image_info: image,
                      Movie_name: moviename,
                      length: length1,
                      trailer: trailer1,
                      date: date1,
                      directed: directed1,
                      rate: rate1,
                      outline: outline1,
                    )));
      },
      child: Container(
        child: Card(
          color: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => new Container(
              child: Center(
                child: new CircularProgressIndicator(),
              ),
              width: 100,
            ),
            // ignore: non_constant_identifier_names
            errorWidget: (BuildContext, url, error) => Icon(Icons.error),
            fadeInCurve: Curves.easeIn,
            fadeInDuration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}

class _PhaseThree extends StatelessWidget {
  final image;
  final moviename;
  final length1, trailer1, date1, rate1, directed1, outline1;

  const _PhaseThree(
      {Key key,
      this.image,
      this.moviename,
      this.length1,
      this.trailer1,
      this.date1,
      this.directed1,
      this.outline1,
      this.rate1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      highlightColor: Colors.redAccent,
      onLongPress: () {
        Fluttertoast.showToast(
            msg: moviename,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0);
      },
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Movie_Info(
                      image_info: image,
                      Movie_name: moviename,
                      length: length1,
                      trailer: trailer1,
                      date: date1,
                      directed: directed1,
                      rate: rate1,
                      outline: outline1,
                    )));
      },
      child: Container(
        child: Card(
          color: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => new Container(
              child: Center(
                child: new CircularProgressIndicator(),
              ),
              width: 100,
            ),
            // ignore: non_constant_identifier_names
            errorWidget: (BuildContext, url, error) => Icon(Icons.error),
            fadeInCurve: Curves.easeIn,
            fadeInDuration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}

class _PhaseFour extends StatelessWidget {
  final image;
  final moviename;
  final length1, trailer1, date1, rate1, directed1, outline1;

  const _PhaseFour(
      {Key key,
      this.image,
      this.moviename,
      this.length1,
      this.trailer1,
      this.date1,
      this.directed1,
      this.outline1,
      this.rate1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      highlightColor: Colors.redAccent,
      onLongPress: () {
        Fluttertoast.showToast(
            msg: moviename,
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 15.0);
      },
      onTap: () {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Movie_Info(
                      image_info: image,
                      Movie_name: moviename,
                      length: length1,
                      trailer: trailer1,
                      date: date1,
                      directed: directed1,
                      rate: rate1,
                      outline: outline1,
                    )));
      },
      child: Container(
        width: 200,
        child: Card(
          color: Colors.black,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: CachedNetworkImage(
            imageUrl: image,
            placeholder: (context, url) => new Container(
              child: Center(
                child: new CircularProgressIndicator(),
              ),
              width: 100,
            ),
            // ignore: non_constant_identifier_names
            errorWidget: (BuildContext, url, error) => Icon(Icons.error),
            fadeInCurve: Curves.easeIn,
            fadeInDuration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
