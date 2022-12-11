

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Model/slider_file.dart';

class CarouselSliderExample extends StatefulWidget {
  const CarouselSliderExample({Key? key}) : super(key: key);

  @override
  State<CarouselSliderExample> createState() => _CarouselSliderExampleState();
}

class _CarouselSliderExampleState extends State<CarouselSliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider (items: [
            ListView.builder (
              itemCount: slider.length,
              itemBuilder: (_,index) => Container(
              height:400 ,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular (20),
                  image: DecorationImage(
                      image: AssetImage('${slider[index].imageUrl}')
                  )
              ),
            ),)
          ],
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              // autoPlayInterval: Duration(milliseconds: 100),// default 400
              // reverse: true,
              aspectRatio: 16/ 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              // scrollDirection: Axis.horizontal,
              //or scrollDirection: Axis.vertical, default horizontal
              viewportFraction: 0.8,
              // padEnds: false first page show half

            ),
          ),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter a search term',          ),
        ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  color: Colors.black,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  left: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
