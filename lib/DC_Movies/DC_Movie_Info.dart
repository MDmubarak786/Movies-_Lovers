import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/Marvel/List_Files_Images.dart';


import 'DC_videoPlayer.dart';

class DC_Movie_Info extends StatelessWidget {
  final image_info;

  final Movie_name;
  final length, trailer, date, rate, directed, outline;
  DC_Movie_Info(
      {this.image_info,
      this.Movie_name,
      this.length,
      this.trailer,
      this.date,
      this.directed,
      this.outline,
      this.rate});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Container(
                      height: 450,
                      width: 300,
                      child: CachedNetworkImage(
                        imageUrl: image_info,
                        imageBuilder: (context, imageprovider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(image: imageprovider),
                          ),
                        ),
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    Movie_name,
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: "Benton",
                        color: Colors.white,
                        letterSpacing: 2),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.timer,
                                color: Colors.red,
                              ),
                              Text(
                                "$length",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new DCVideoPlayerApp(
                                      trailer: trailer,
                                    )));
                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.red,
                                  size: 30,
                                ),
                                Text(
                                  "Trailer",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.calendar_today_sharp,
                                color: Colors.red,
                              ),
                              Text(
                                "$date",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: 150,
                    height: 50,
                    child: RaisedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.arrow_downward_sharp,
                            size: 30,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "More",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                          Icon(
                            Icons.arrow_downward_sharp,
                            size: 30,
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      highlightColor: Colors.redAccent,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        print(Null);
                      },
                    ),
                  ),
                ),
                SizedBox(height: 18),

                Center(
                  child: Container(
                    width: 110,
                    child: RaisedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.amberAccent,
                          ),
                          Text(
                            "$rate / 10",
                            style:
                                TextStyle(fontSize: 13, color: Colors.black87),
                          ),
                        ],
                      ),
                      highlightColor: Colors.redAccent,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        print(Null);
                      },
                    ),
                  ),
                ),

                SizedBox(height: 20),
                Container(
                  child: Text(
                    "Directed :",
                    style: TextStyle(
                        fontFamily: "Benton",
                        fontSize: 30,
                        color: Colors.redAccent,
                        letterSpacing: 1.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Text(
                      "$directed",
                      style: TextStyle(
                          fontFamily: "Marvel",
                          fontSize: 30,
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                //
                Container(
                  child: Text(
                    "Outline :",
                    style: TextStyle(
                        fontFamily: "Benton",
                        fontSize: 30,
                        color: Colors.redAccent,
                        letterSpacing: 1.0),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      "$outline",
                      style: TextStyle(
                          fontFamily: "Marvel",
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1.0),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Text(
                    "Available :",
                    style: TextStyle(
                        fontFamily: "Benton",
                        fontSize: 30,
                        color: Colors.redAccent,
                        letterSpacing: 1.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://sguru.org/wp-content/uploads/2018/02/Amazon-Prime-Video-Logo-2016-700x325.jpg"),
                      ),
                    ),
                    height: 100,
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
