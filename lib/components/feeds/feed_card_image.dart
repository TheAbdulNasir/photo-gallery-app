import 'package:flutter/material.dart';
import 'package:mobile_100asa/utils/constants.dart';

class FeedCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset.bottomLeft,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
          child: Image.network(
            'https://100asa.azureedge.net/photos/294/d31794f5-f4ee-4079-b144-c678cc112318-w.jpg',
          ),
        ),
        Container(
          padding: EdgeInsets.all(12.0),
          height: 60.0,
          decoration: BoxDecoration(
            gradient: kDarkLinearGradient,
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://lh5.googleusercontent.com/-hcOg3IAA-2E/AAAAAAAAAAI/AAAAAAAAAj0/_Aa85UNhAbQ/s96-c/photo.jpg',
                ),
                radius: 18.0,
              ),
              SizedBox(
                width: 12.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lorem Ipsum Dolor Sit Amet',
                    style: kTitleTextStyleLight,
                  ),
                  SizedBox(
                    height: 1.0,
                  ),
                  Text(
                    'by Andrea Turri',
                    style: kRegularMediumTextStyleLight,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
