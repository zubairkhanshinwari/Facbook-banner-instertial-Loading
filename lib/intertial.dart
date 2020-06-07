import 'package:flutter/material.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:facebookads/intertial.dart';

import 'home_page.dart';

class Instertial extends StatefulWidget {
  @override
  _InstertialState createState() => _InstertialState();
}

class _InstertialState extends State<Instertial> {
  @override
  void initState() {
    super.initState();
    setState(() {
      //LoadIntertial();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child: Text('hello'),
          ),
          RaisedButton(
            child: Text('back'),
            onPressed: () {
              setState(() {
                LoadIntertialBack();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FacebookAds()));
              });
            },
          )
        ],
      ),
    );
  }
}

void LoadIntertial() {
  FacebookInterstitialAd.loadInterstitialAd(
    placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
    listener: (result, value) {
      if (result == InterstitialAdResult.LOADED)
        FacebookInterstitialAd.showInterstitialAd(delay: 2000);
    },
  );
}

void LoadIntertialBack() {
  FacebookInterstitialAd.loadInterstitialAd(
    placementId: "IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617",
    listener: (result, value) {
      if (result == InterstitialAdResult.LOADED)
        FacebookInterstitialAd.showInterstitialAd();
    },
  );
}

//IMG_16_9_APP_INSTALL#2312433698835503_2650502525028617
