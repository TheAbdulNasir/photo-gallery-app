import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/components/home/main_card_icon.dart';
import 'package:mobile_100asa/utils/constants.dart';
import 'package:mobile_100asa/utils/enums.dart';

class WeeklyTokensCardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final int numberOfTokens = 0;
    final String tokenPlurals = numberOfTokens == 1 ? '' : 's';

    return Row(
      children: <Widget>[
        MainCardIcon(icon: FontAwesomeIcons.coins),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Weekly Tokens',
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 6.0,
            ),
            RichText(
              text: TextSpan(
                style: kRegularSmallTextStyle,
                children: [
                  TextSpan(text: 'You have '),
                  TextSpan(
                    text: '$numberOfTokens',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' Token$tokenPlurals',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Button(
              onPressed: () {},
              outlined: true,
              textColor: Colors.grey[900],
              size: Size.xSmall,
              child: Text(
                'Curate to earn tokens'.toUpperCase(),
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
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
