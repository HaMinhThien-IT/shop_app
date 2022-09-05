import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iWarden/common/SlideImage.dart';
import 'package:iWarden/config/const.dart';
import 'package:iWarden/screens/IssuePCNFirstSeen.dart';
import 'package:iWarden/theme/color.dart';
import 'package:iWarden/theme/textTheme.dart';

import 'package:iWarden/widgets/appBar.dart';
import 'package:iWarden/widgets/drawer/app_drawer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: "bd5i smr".toUpperCase(), automaticallyImplyLeading: true),
      drawer: const MyDrawer(),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(width: 1, color: ColorTheme.grey300),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/IconCar.svg"),
                  label: const Text(
                    "Car left",
                    style: CustomTextStyle.h6,
                  )),
              Container(
                height: 25,
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        vertical:
                            BorderSide(width: 0.5, color: ColorTheme.grey300))),
              ),
              TextButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                        IssuePCNFirstSeenScreen.routerName,
                        arguments: {'id': 2});
                  },
                  icon: SvgPicture.asset("assets/svg/IconCharges2.svg"),
                  label: const Text(
                    "Issue charge",
                    style: CustomTextStyle.h6,
                  )),
              Container(
                height: 25,
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        vertical:
                            BorderSide(width: 0.5, color: ColorTheme.grey300))),
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/svg/IconLocation.svg"),
                  label: const Text(
                    "Locate car",
                    style: CustomTextStyle.h6,
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.width < 400
                  ? 0
                  : ConstSpacing.bottom),
          child: Column(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: const EdgeInsets.only(top: 16),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "bd5i smr".toUpperCase(),
                          style: CustomTextStyle.h4,
                        ),
                        const Text(
                          "Bay number: 12",
                          style: CustomTextStyle.h6,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Expired in: 12:12:23",
                            style: CustomTextStyle.h6
                                .copyWith(color: ColorTheme.danger)),
                        Text("Visited: 12:12:23 12/08/2022",
                            style: CustomTextStyle.h6
                                .copyWith(color: ColorTheme.grey600)),
                      ],
                    )
                  ],
                ),
              ),
              ManuallyControlledSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
