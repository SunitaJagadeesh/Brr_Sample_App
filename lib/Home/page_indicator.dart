import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatefulWidget {
  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //SizedBox(height: 10),
              SizedBox(
                height: 280,
                width: 400,
                child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildDivider(),
                                Divider(
                                  color: Colors.red,
                                  height: 50,
                                  thickness: 10,
                                ),
                                Text("COMMITTED TO SUCCESS",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),)
                                //  buildDivider(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("We Help to grow your business",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Talk to our experts today for delivering customized software solutions that support your business growth !!"),
                            ),
                            RaisedButton(
                                color: Colors.red,
                                onPressed: null,
                                child: Text("OUR SERVICES"))

                          ],
                        ),

                      ),
                    Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildDivider(),
                                Divider(
                                  color: Colors.red,
                                  height: 50,
                                  thickness: 10,
                                ),
                                Text("100% WORK FROM HOME",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),)
                                //  buildDivider(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Remote Work Is the Future",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("We have the right tools and technologies that support 100% work from Home, and produce a high quality deliverables for the success of our customers and partners. !!"),
                            ),
                            RaisedButton(
                                color: Colors.red,
                                onPressed: null,
                                child: Text("COVID-19 RESILIENCE PROGRAM"))

                          ],
                        ),

                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildDivider(),
                                Divider(
                                  color: Colors.red,
                                  height: 50,
                                  thickness: 10,
                                ),
                                Text("CAREER BUILDING PROGRAM",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),)
                                //  buildDivider(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Propel your IT Career",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("We can help propel your IT Career with an Unique career building program.!! This will lay a bridge between Institute to Corporate Industry"),
                            ),
                            RaisedButton(
                                color: Colors.red,
                                onPressed: null,
                                child: Text("JOIN THE TEAM"))

                          ],
                        ),

                      ),
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                buildDivider(),
                                Divider(
                                  color: Colors.red,
                                  height: 50,
                                  thickness: 10,
                                ),
                                Text("CAREER BUILDING PROGRAM",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600,
                                  ),)
                                //  buildDivider(),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Get the First Job Of your IT Career",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("We can help propel your IT Career with an Unique career building program.!! This will lay a bridge between Institute to Corporate Industry!!"),
                            ),
                            RaisedButton(
                                color: Colors.red,
                                onPressed: null,
                                child: Text("BCA&BSC. GRADUATES"))

                          ],
                        ),

                      ),

                    ]
                  /*
                  List.generate(
                      6,
                          (_) => Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Container(height: 280),
                      )
                  ),

                   */
                ),
              ),
              //SizedBox(height: 16),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: WormEffect(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Colors.red,
        height: 5,
        thickness: 2,
      ),
    );
  }
}
