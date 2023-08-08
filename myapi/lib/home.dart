import 'package:flutter/material.dart';

import 'apis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            color: Colors.amber,
            child: SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(numberMeaing),
                )),
          ),
          Card(
              color: Colors.indigoAccent,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: TextField(
                            controller: numberController,
                            decoration: const InputDecoration(
                                hintText: "Enter the Number"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: IconButton(
                            onPressed: () async {
                              final result = await getNumberMeaning(
                                  int.parse(numberController.text));
                              setState(() {
                                numberMeaing = result.text!;
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_circle_right,
                              color: Colors.tealAccent,
                            )),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
