import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reddit_clone/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool postCard = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.bottomCenter,
                      height: 45,
                      width: 45,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: kPrimaryLighterColor,
                                shape: BoxShape.circle),
                          ),
                          Image.asset("assets/images/avatar.png"),
                          Positioned(
                            right: 2,
                            bottom: 1,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        height: 35,
                        decoration: BoxDecoration(
                          color: kPrimaryLighterColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          style:
                              TextStyle(color: kWhiteLightColor, fontSize: 15),
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              icon: SvgPicture.asset(
                                'assets/icons/search.svg',
                                color: kWhiteLightColor.withOpacity(0.5),
                                height: 20,
                              ),
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  color: kWhiteLightColor.withOpacity(0.5))),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      height: 45,
                      width: 45,
                      /*decoration: BoxDecoration(color: Colors.white),*/
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/coin.svg",
                            height: 20,
                          ),
                          Positioned(
                            bottom: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: kPrimaryColor, width: 0.5)),
                              child: Text(
                                "FREE",
                                style:
                                    TextStyle(color: kTextColor, fontSize: 8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2, color: kUnderlineColor),
                    ),
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    isScrollable: true,
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Popular",
                      )
                    ]),
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  child: TabBarView(
                    children: [
                      Container(
                        child: SingleChildScrollView(
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(
                                bottom: BorderSide(
                                    color: kWhiteLightColor.withOpacity(0.3),
                                    width: 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/rocket.svg",
                                  color: kWhiteLightColor.withOpacity(0.5),
                                  height: 25,
                                  width: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "best posts".toUpperCase(),
                                  style: TextStyle(
                                      color: kWhiteLightColor.withOpacity(0.5),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/down_chevron.svg",
                                  color: kWhiteLightColor.withOpacity(0.5),
                                  height: 12,
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      backgroundColor: Colors.transparent,
                                      builder: (BuildContext context) {
                                        return Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                topLeft: Radius.circular(5),
                                              ),
                                              color: kPrimaryLighterColor),
                                          height: 120,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "post view".toUpperCase(),
                                                  style: TextStyle(
                                                      color: kWhiteLightColor
                                                          .withOpacity(0.5),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 10),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 0.5,
                                                  decoration: BoxDecoration(
                                                      color: kWhiteLightColor
                                                          .withOpacity(0.2)),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      postCard = true;
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: double.infinity,
                                                    child: Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/card.svg",
                                                          width: 20,
                                                          color:
                                                              kWhiteLightColor
                                                                  .withOpacity(
                                                            postCard ? 1 : 0.5,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          "Card",
                                                          style: TextStyle(
                                                              color: kWhiteLightColor
                                                                  .withOpacity(
                                                                      postCard
                                                                          ? 1
                                                                          : 0.5),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12),
                                                        ),
                                                        Spacer(),
                                                        SvgPicture.asset(
                                                          "assets/icons/tick.svg",
                                                          color:
                                                              kUnderlineColor,
                                                          width: postCard ? 15 : 0,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      postCard = false;
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Container(
                                                    height: 25,
                                                    width: double.infinity,
                                                    child: Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          "assets/icons/classic.svg",
                                                          width: 20,
                                                          color:
                                                              kWhiteLightColor
                                                                  .withOpacity(
                                                            postCard ? 0.5 : 1,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          "Classic",
                                                          style: TextStyle(
                                                              color: kWhiteLightColor
                                                                  .withOpacity(
                                                                      postCard
                                                                          ? 0.5
                                                                          : 1),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12),
                                                        ),
                                                        Spacer(),
                                                        SvgPicture.asset(
                                                          "assets/icons/tick.svg",
                                                          color:
                                                          kUnderlineColor,
                                                          width: postCard ? 0 : 15,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    postCard
                                        ? "assets/icons/card.svg"
                                        : "assets/icons/classic.svg",
                                    width: 20,
                                    color: kWhiteLightColor.withOpacity(0.5),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text('Tab 2'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
