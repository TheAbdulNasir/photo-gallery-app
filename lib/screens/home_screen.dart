import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_100asa/components/button.dart';
import 'package:mobile_100asa/components/clean_app_bar.dart';
import 'package:mobile_100asa/components/feeds/feed_card.dart';
import 'package:mobile_100asa/components/home/connections_card_content.dart';
import 'package:mobile_100asa/components/home/next_photo_upload_card_content.dart';
import 'package:mobile_100asa/components/home/reputation_card_content.dart';
import 'package:mobile_100asa/components/home/weekly_tokens_card_content.dart';
import 'package:mobile_100asa/components/spaced_container.dart';
import 'package:mobile_100asa/components/bordered_card.dart';
import 'package:mobile_100asa/utils/constants.dart';
import 'package:mobile_100asa/utils/enums.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CleanAppBar('Home'),
      body: SingleChildScrollView(
        child: SpacedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BorderedCard(
                child: ReputationCardContent(),
              ),
              SizedBox(
                height: 12.0,
              ),
              BorderedCard(
                child: WeeklyTokensCardContent(),
              ),
              SizedBox(
                height: 12.0,
              ),
              BorderedCard(
                child: NextPhotoUploadCardContent(),
              ),
              SizedBox(
                height: 12.0,
              ),
              BorderedCard(
                child: ConnectionsCardContent(),
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                'Last feed from your peers',
                style: kTitleTextStyle,
              ),
              SizedBox(
                height: 6.0,
              ),
              FeedCard(),
              SizedBox(
                height: 12.0,
              ),
              Container(
                alignment: Alignment(1, 0),
                child: Button(
                  onPressed: () {},
                  outlined: true,
                  textColor: Colors.grey[900],
                  size: Size.xSmall,
                  child: Text(
                    'View all'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        iconSize: 16.0,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Home'),
            activeColor: Colors.grey[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Galleries'),
            activeColor: Colors.grey[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Upload'),
            activeColor: Colors.grey[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('Feeds'),
            activeColor: Colors.grey[900],
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(FontAwesomeIcons.home),
            title: Text('More'),
            activeColor: Colors.grey[900],
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
