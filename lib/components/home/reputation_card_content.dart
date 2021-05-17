import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/home/main_card_icon.dart';
import 'package:mobile_100asa/utils/constants.dart';

class ReputationCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MainCardIcon(icon: FontAwesomeIcons.graduationCap),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Reputation',
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: <Widget>[
                FaIcon(
                  FontAwesomeIcons.trophy,
                  size: 12.0,
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  '27919 - MASTER',
                  style: kRegularSmallTextStyle,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.fromLTRB(24.0, 0, 12.0, 0),
          child: FaIcon(
            FontAwesomeIcons.infoCircle,
            size: 16.0,
          ),
        ),
      ],
    );
  }
}
