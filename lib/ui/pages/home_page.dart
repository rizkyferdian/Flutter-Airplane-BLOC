import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widget/destination_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy\nKezzia Anne",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today?",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/image_profile.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: "Lake Ciliwung",
                city: "Tangerang",
                imageUrl: "assets/image_destination1.png",
                rating: 4.8,
              ),
              DestinationCard(
                  name: "White Houses",
                  city: "Spain",
                  imageUrl: "assets/image_destination2.png",
                  rating: 4.9),
              DestinationCard(
                  name: "Hill Heyo",
                  city: "Monaco",
                  imageUrl: "assets/image_destination3.png",
                  rating: 4.6),
              DestinationCard(
                  name: "Menara",
                  city: "Japan",
                  imageUrl: "assets/image_destination4.png",
                  rating: 4.7),
              DestinationCard(
                  name: "Tree Umbrella",
                  city: "Denmark",
                  imageUrl: "assets/image_destination5.png",
                  rating: 4.5),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          popularDestinations(),
        ],
      ),
    );
  }
}
