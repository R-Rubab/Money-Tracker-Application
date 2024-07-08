import 'dart:ui';

import 'package:cypto_app/core/export_files/export_files.dart';
import 'package:cypto_app/screens/card.dart';
import 'package:cypto_app/screens/expense_graph.dart';
import 'package:cypto_app/screens/expense_income.dart';
import 'package:cypto_app/screens/progress_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<IconData> list = [
      Iconsax.barcode,
      Iconsax.setting,
      Iconsax.link_circle,
      Iconsax.notification,
    ];
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: [
          const GlassContainerWidget(
            height: 200,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 5, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "CoinMaster",
                        style: GoogleFonts.robotoMono(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.settings,
                        color: Colors.white54,
                        size: 30,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 4, 4),
                        
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.pink),
                            image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/profile.png'))),
                      ),
                    ],
                  ),
                ),
                const VisaCardDesign(),
                const ExpenseIncomeData(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 350,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(height: 8),
                          Text(
                            "Analytics",
                            style: TextStyle(
                              fontSize: 19,    letterSpacing: 1.9,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          ExpenseGraphDesign(),
                          SizedBox(height: 15),
                          CircleProgressChart(),
                          SizedBox(height: 140),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 08,
            left: 35,
            child: GlassContainerWidget(
              border: Border.all(width: 3, color: Colors.pink.shade300),
              height: CustomSize.gh * .08,
              borderRadius: 160,
              width: CustomSize.gw * .82,
              child: Stack(
                children: [
                  Positioned(
                    left: 14,
                    top: 20,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.pink,
                            Colors.purple,
                          ],
                        ),
                      ),
                      height: 20,
                      width: CustomSize.gw * .7,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 0; i < list.length; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Container(
                            height: CustomSize.gh * .3,
                            width: CustomSize.gw * .2,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 59, 2, 34),
                                  // .withOpacity(.9),
                                  offset: Offset(3, 3),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ],

                              // borderRadius: BorderRadius.circular(12),

                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.pink,
                                  Colors.purple,
                                ],
                              ),
                            ),
                            child: Icon(
                              list[i],
                              size: 28,
                              color: CustomColors.white,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // bottomNavigationBar: Container(
      //   height: CustomSize.gh * .05,
      //   width: CustomSize.gw,
      //   decoration: BoxDecoration(
      //     // boxShadow: const [],
      //     borderRadius: BorderRadius.circular(12),
      //     gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       colors: [
      //         const Color.fromARGB(255, 255, 255, 255).withOpacity(.4),
      //         const Color.fromARGB(255, 236, 234, 234).withOpacity(.4),
      //       ],
      //     ),
      //     border: Border.all(width: 1, color: Colors.green),
      //     boxShadow: [
      //           BoxShadow(
      //             color: const Color.fromARGB(255, 240, 239, 239)
      //                 .withOpacity(.4),
      //             offset: const Offset(3, 3),
      //             blurRadius: 9,
      //             spreadRadius: 1,
      //           ),
      //           BoxShadow(
      //             color: const Color.fromARGB(255, 255, 255, 255)
      //                 .withOpacity(.4),
      //             offset: const Offset(-3, -3),
      //             blurRadius: 9,
      //             spreadRadius: 1,
      //           ),
      //         ],
      // ),
      //   child: Row(
      //     children: [
      //       // for (var i = 0; i < 4; i++)
      //       Container(
      //         height: CustomSize.gh * .09,
      //         width: CustomSize.gw * .09,
      //         decoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           boxShadow: [
      //             BoxShadow(
      //               color: const Color.fromARGB(255, 240, 239, 239)
      //                   .withOpacity(.9),
      //               offset: const Offset(3, 3),
      //               blurRadius: 9,
      //               spreadRadius: 1,
      //             ),
      //             BoxShadow(
      //               color: const Color.fromARGB(255, 255, 255, 255)
      //                   .withOpacity(.5),
      //               offset: const Offset(-3, -3),
      //               blurRadius: 9,
      //               spreadRadius: 1,
      //             ),
      //           ],
      //           // borderRadius: BorderRadius.circular(12),

      //           gradient: LinearGradient(
      //             begin: Alignment.topCenter,
      //             end: Alignment.bottomCenter,
      //             colors: [
      //               const Color.fromARGB(255, 255, 255, 255).withOpacity(.9),
      //               const Color.fromARGB(255, 236, 234, 234).withOpacity(.5),
      //             ],
      //           ),
      //           border: Border.all(width: 1, color: Colors.green),
      //         ),
      //         child: const Icon(
      //           Icons.abc,
      //           color: CustomColors.white,
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(12),
      //     child: Container(
      //       decoration: BoxDecoration(
      //         // borderRadius: BorderRadius.circular(12),
      //         border: Border.all(width: 10, color: Colors.green),
      //       ),
      //       child: BottomNavigationBar(
      //         showSelectedLabels: false,
      //         items: [
      //           BottomNavigationBarItem(
      //             backgroundColor: Colors.grey.shade900,
      //             icon: const Icon(Icons.bar_chart, color: Colors.grey),
      //             label: "",
      //           ),
      //           BottomNavigationBarItem(
      //             backgroundColor: Colors.grey.shade900,
      //             icon: const Icon(Icons.add_card, color: Colors.grey),
      //             label: "",
      //           ),
      //           BottomNavigationBarItem(
      //             backgroundColor: Colors.grey.shade900,
      //             icon: const Icon(Icons.notifications, color: Colors.grey),
      //             label: "",
      //           ),
      //           BottomNavigationBarItem(
      //             backgroundColor: Colors.grey.shade900,
      //             icon: const Icon(Icons.settings, color: Colors.grey),
      //             label: "",
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

class GlassContainerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final Border? border;
  final double? borderRadius;
  const GlassContainerWidget({
    super.key,
    this.child,
    this.height,
    this.width,
    this.border,
    this.borderRadius = 30,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius!),
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(),
            ),
            Container(
                decoration: BoxDecoration(
                  // color: Colors.white.withOpacity(.1),
                  // boxShadow: const [],
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.pink.withOpacity(.4),
                      Colors.purple.withOpacity(.3),
                    ],
                  ),
                  border: border,
                ),
                child: child)
          ],
        ),
      ),
    );
  }
}
