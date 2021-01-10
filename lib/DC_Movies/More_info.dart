import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class More_info extends StatelessWidget {
  String _lunchINS = 'https://www.instagram.com/scooby_doo.mk/';

  String _lunchFB = 'https://www.facebook.com/profile.php?id=100022367763572';

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          "Movies' Lovers",
                          style: TextStyle(
                              fontFamily: "Marvel",
                              fontSize: 30,
                              color: Colors.redAccent),
                        ),
                      ),
                      Container(
                        width: 115.0,
                        child: RaisedButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.mail_outline,
                                size: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          color: Colors.red,
                          splashColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            customLaunch(
                                'mailto:mohammedmubarakmk@gmail.com?subject=Movies%20Lovers&body=Hi%20Mubarak,\n     ');
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          "────────",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Social links",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.redAccent),
                        ),
                      ),
                      Container(
                        child: Text(
                          "────────",
                          style: TextStyle(fontSize: 20, color: Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 3.6,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/images/f1.png"),
                              ),
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black87),
                              ),
                            ],
                          ),
                          color: Colors.white,
                          splashColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            customLaunch(_lunchFB);
                          },
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 3.6,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/images/Linkedin.png"),
                              ),
                              Text(
                                "Linkedin",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black87),
                              ),
                            ],
                          ),
                          color: Colors.white,
                          splashColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            customLaunch(
                                "https://www.linkedin.com/in/mohammed-mubarak-5bbb47169/");
                          },
                        ),
                      ),
                      Container(
                        width: 110,
                        child: RaisedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage("assets/images/i1.png"),
                              ),
                              Text(
                                "Instagram",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.black87),
                              ),
                            ],
                          ),
                          color: Colors.white,
                          splashColor: Colors.grey[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            // _lunchInBrowser(_lunchINS);
                            customLaunch(_lunchINS);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.6,
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
                          "Rating",
                          style: TextStyle(fontSize: 13, color: Colors.black87),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    splashColor: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      print("hello man!!!");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Made with",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "in India",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
