import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/myprojects/widgets/categoryButtonWidget.dart';
import 'package:uninet/presentation/myprojects/widgets/exploreProjectsButtonWidget.dart';

class ExploreProjectsWidget extends StatelessWidget {
  const ExploreProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              child: Divider(
                thickness: 2,
              ),
            ),
            Text("Explore projects",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 94, 165, 158),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                              kblack.withOpacity(0.1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            // side: BorderSide(color: Colors.red)
                          ))),
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (ctx) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: kblack.withOpacity(0.7),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                height: MediaQuery.of(context).size.height * .4,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'select categories',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: List.generate(3, (index) {
                                          return CategoryButtonWidget();
                                        }),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Text('filter',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            )
          ],
        ),
        Column(
          children: List.generate(5, (index) {
            return ExploreProjectsButtonWidget();
          }),
        )
      ],
    );
  }
}
