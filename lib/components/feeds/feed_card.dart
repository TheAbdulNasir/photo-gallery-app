import 'package:flutter/material.dart';
import 'package:mobile_100asa/components/bordered_card.dart';
import 'package:mobile_100asa/components/feeds/feed_card_content.dart';
import 'package:mobile_100asa/components/feeds/feed_card_image.dart';

class FeedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BorderedCard(
      padding: 0,
      child: Column(
        children: <Widget>[
          FeedCardImage(),
          FeedCardContent(),
        ],
      ),
    );
  }
}
