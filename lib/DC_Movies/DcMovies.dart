import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'DC_Movie_Info.dart';
import 'List_DC_Images.dart';

class DcMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 25,
            child: Text(
              "DC Movies",
              style: TextStyle(
                  fontFamily: "Benton",
                  fontSize: 25,
                  color: Colors.white,
                  letterSpacing: 1.0),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.height / 1180,
              children: [
                _DC(
                  image: DC_Movies[0],
                  moviename: "Man of Steel",
                  length1: ManofSteel[0],
                  trailer1: ManofSteel[1],
                  date1: ManofSteel[2],
                  rate1: ManofSteel[3],
                  directed1: ManofSteel[4],
                  outline1: ManofSteel[5],
                ),
                _DC(
                  image: DC_Movies[1],
                  moviename: "Batman vs Superman",
                  length1: BatmanvsSuperman[0],
                  trailer1: BatmanvsSuperman[1],
                  date1: BatmanvsSuperman[2],
                  rate1: BatmanvsSuperman[3],
                  directed1: BatmanvsSuperman[4],
                  outline1: BatmanvsSuperman[5],
                ),
                _DC(
                  image: DC_Movies[2],
                  moviename: "Suicide Squad",
                  length1: SuicideSquad[0],
                  trailer1: SuicideSquad[1],
                  date1: SuicideSquad[2],
                  rate1: SuicideSquad[3],
                  directed1: SuicideSquad[4],
                  outline1: SuicideSquad[5],
                ),
                _DC(
                  image: DC_Movies[3],
                  moviename: "Wonder Woman ",
                  length1: WonderWoman[0],
                  trailer1: WonderWoman[1],
                  date1: WonderWoman[2],
                  rate1: WonderWoman[3],
                  directed1: WonderWoman[4],
                  outline1: WonderWoman[5],
                ),
                _DC(
                  image: DC_Movies[4],
                  moviename: "Justice League",
                  length1: JusticeLeague[0],
                  trailer1: JusticeLeague[1],
                  date1: JusticeLeague[2],
                  rate1: JusticeLeague[3],
                  directed1: JusticeLeague[4],
                  outline1: JusticeLeague[5],
                ),
                _DC(
                  image: DC_Movies[5],
                  moviename: "Aquaman",
                  length1: Aquaman[0],
                  trailer1: Aquaman[1],
                  date1: Aquaman[2],
                  rate1: Aquaman[3],
                  directed1: Aquaman[4],
                  outline1: Aquaman[5],
                ),
                _DC(
                  image: DC_Movies[6],
                  moviename: "Shazam",
                  length1: Shazam[0],
                  trailer1: Shazam[1],
                  date1: Shazam[2],
                  rate1: Shazam[3],
                  directed1: Shazam[4],
                  outline1: Shazam[5],
                ),
                _DC(
                  image: DC_Movies[7],
                  moviename: "Birds of Prey",
                  length1: BirdsofPrey[0],
                  trailer1: BirdsofPrey[1],
                  date1: BirdsofPrey[2],
                  rate1: BirdsofPrey[3],
                  directed1: BirdsofPrey[4],
                  outline1: BirdsofPrey[5],
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

class _DC extends StatelessWidget {
  final image;
  final moviename;
  final length1, trailer1, date1, rate1, directed1, outline1;
  _DC(
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
                builder: (context) => new DC_Movie_Info(
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
          color: Colors.transparent,
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: CachedNetworkImage(
            fit: BoxFit.fitHeight,
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
