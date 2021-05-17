import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/home/main_card_icon.dart';
import 'package:mobile_100asa/utils/constants.dart';

class NextPhotoUploadCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int tokensRequired = 10;

    return Row(
      children: <Widget>[
        MainCardIcon(icon: FontAwesomeIcons.images),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Next Photo Upload',
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 6.0,
            ),
            RichText(
              text: TextSpan(
                style: kRegularSmallTextStyle,
                children: [
                  TextSpan(
                    text: '$tokensRequired',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' tokens required',
                  ),
                ],
              ),
            ),
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
