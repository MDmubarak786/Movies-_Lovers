import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarSlider extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<String> CarouselImage = [
    "https://i2.wp.com/thedisinsider.com/wp-content/uploads/2020/08/cvztitQ7JjE2vEa7hhVPhX.jpg?w=1280&ssl=1",
    "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/5/5c/Thor_Thunder_%26_Love_Logo_Cropped.jpg/revision/latest?cb=20190721235428",
    "https://lumiere-a.akamaihd.net/v1/images/b_blackwidow_18663_9c7dd5bf.jpeg?region=0,0,2048,601",
    "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/8/8d/DOCTOR_STRANGE_IN_THE_MULTIVERSE_OF_MADNESS_Logo_Cropped.jpg/revision/latest?cb=20190721235647",
    "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/7/7c/Eternals_New_Logo.jpeg/revision/latest?cb=20200827192843"
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          _CarouselSliderPage(
            image: CarouselImage[0],
            fit: BoxFit.fill,
          ),
          _CarouselSliderPage(
            image: CarouselImage[1],
            fit: BoxFit.fitHeight,
          ),
          _CarouselSliderPage(
            image: CarouselImage[2],
            fit: BoxFit.fitWidth,
          ),
          _CarouselSliderPage(
            image: CarouselImage[3],
            fit: BoxFit.fill,
          ),
          _CarouselSliderPage(
            image: CarouselImage[4],
            fit: BoxFit.fill,
          ),
        ],
        options: CarouselOptions(
          // autoPlay: true,
          height: 200.0,
          enlargeCenterPage: true,
          viewportFraction: 0.8,
          enableInfiniteScroll: false,
        ));
  }
}

class _CarouselSliderPage extends StatelessWidget {
  final image;
  final fit;
  _CarouselSliderPage({this.image, this.fit});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CachedNetworkImage(
        imageUrl: image,
        imageBuilder: (context, imageprovider) => Container(
          decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(image: imageprovider, fit: fit)),
        ),
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
