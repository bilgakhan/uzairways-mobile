import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image(
                    width: MediaQuery.sizeOf(context).width * 0.6,
                    image: const AssetImage(
                      "assets/images/logo.png",
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: FaIcon(FontAwesomeIcons.bell),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  // from
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Qayerdan",
                    ),
                  ),
                  const SizedBox(height: 10),
                  // to
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Qayerga",
                    ),
                  ),
                  const SizedBox(height: 10),

                  // row for departure and return time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: "Ketish",
                            suffixIcon: const FaIcon(
                              FontAwesomeIcons.calendar,
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: SizedBox.shrink(),
                      ),
                      Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            labelText: "Ketish",
                            suffixIcon: const FaIcon(
                              FontAwesomeIcons.calendar,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // passangers
                  Container(
                    height: 60,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        border: Border.all(
                            color: const Color.fromARGB(255, 48, 48, 48))),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "1 yo'lovchi",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.squareCheck,
                            size: 30,
                          ),
                          Text(
                            "UZS",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.square,
                            size: 30,
                          ),
                          Text(
                            "USD",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.square,
                            size: 30,
                          ),
                          Text(
                            "RUB",
                            style: TextStyle(fontSize: 22),
                          )
                        ],
                      ),
                    ],
                  )

                  // currency and ticket for ball
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 80,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        "Chipta qidirish",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
