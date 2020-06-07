import 'package:facebook_audience_network/ad/ad_banner.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:facebookads/intertial.dart';
import 'package:flutter/material.dart';

class FacebookAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Facebook(),
    );
  }
}

class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  void initState() {
    super.initState();
    setState(() {});
    FacebookAudienceNetwork.init(
      testingId: "37b1da9d-b48c-4103-a393-2e095e734bd6",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200),
            alignment: Alignment(0.5, 1),
            child: FacebookBannerAd(
              placementId: "IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID",
              bannerSize: BannerSize.STANDARD,
              listener: (result, value) {
                switch (result) {
                  case BannerAdResult.ERROR:
                    print("Error: $value");
                    break;
                  case BannerAdResult.LOADED:
                    print("Loaded: $value");
                    break;
                  case BannerAdResult.CLICKED:
                    print("Clicked: $value");
                    break;
                  case BannerAdResult.LOGGING_IMPRESSION:
                    print("Logging Impression: $value");
                    break;
                  default:
                    print("Result Vale is : $result");
                }
              },
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Instertial()));
            },
            child: Text('next'),
          )
        ],
      ),
    );
  }
}
