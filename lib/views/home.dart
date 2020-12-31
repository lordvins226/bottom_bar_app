import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Test())),
          ),
          body: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: FlutterLogo(),
                ),
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22)),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(
                                            text: "Achats d'unites / Data",
                                            style:
                                                TextStyle(color: Colors.black)))
                                  ],
                                ),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          text: "Flash ",
                                          style: TextStyle(color: Colors.blue),
                                          children: [
                                            TextSpan(
                                                text: "NANAN EXPRESS",
                                                style: TextStyle(
                                                    color: Colors.red)),
                                            TextSpan(
                                                text: " SAPSAP",
                                                style: TextStyle(
                                                    color: Colors.amber))
                                          ]),
                                    )
                                  ],
                                ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.start,
                            ),
                            Column(
                              children: [FlutterLogo()],
                            )
                          ],
                        )),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: new BorderSide(
                                  color: Colors.black, width: 0.5),
                              borderRadius: BorderRadius.circular(4.0)),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [FlutterLogo()],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text("Achat unites et forfait internetn"),
                                    Text("Achat unites et forfait internetn"),
                                    Text("Achat unites et forfait internetn"),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("test"),
    );
  }
}
