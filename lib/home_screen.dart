import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'auth_services.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<AuthServices>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f59c8),
        title: Text('Dashboard'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () async => await loginProvider.logout(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffa4a7ee),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: MediaQuery.of(context).size.height / 4 - 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Live",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text("Cars : 1"),
                              SizedBox(
                                height: 15,
                              ),
                              Text("Bike : 1"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 4 - 20,
                      decoration: BoxDecoration(
                        color: Color(0xff394180),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      //width: MediaQuery.of(context).size.width / 2 - 15 - 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Vehicle Entry",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Column(
                            children: [
                              Text("Cars : 1"),
                              SizedBox(
                                height: 15,
                              ),
                              Text("Bike : 1"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4 - 20,
                decoration: BoxDecoration(
                    color: Color(0xffbfc2e1),
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Total Count(Camera)",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [
                        Text("Cars : 1"),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Bike : 1"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 4 - 20,
                  decoration: BoxDecoration(
                      color: Color(0xff9470dc),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Total Earnings",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Rs. 60 ",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: MaterialButton(
                      color: Color(0xff8888cd),
                      onPressed: () {},
                      child: Text("EMPLOYEE"),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: Material(
                      child: MaterialButton(
                        color: Color(0xff8888cd),
                        onPressed: () {},
                        child: Text("HISTORY"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
