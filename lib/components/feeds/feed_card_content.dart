import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/utils/constants.dart';

class FeedCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'This photo has been published 8 hours ago',
            style: kRegularMediumTextStyle,
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.commentDots,
                      size: 14.0,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      'Comment this photo',
                      style: kRegularSmallTextStyle,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: Row(
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.comments,
                      size: 16.0,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      '6',
                      style: kRegularMediumTextStyle,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    FaIcon(
                      FontAwesomeIcons.heart,
                      size: 16.0,
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      '11',
                      style: kRegularMediumTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
