import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/core/constants/constants.dart';

class PostWidget extends StatelessWidget {
  PostWidget({
    super.key,
  });
  int tempClapCount = 654;
  ValueNotifier<bool> clapNotifier = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width,
      decoration: BoxDecoration(
        color: kwhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  kheight10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: kwhite,
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk8KxHdzexaVGNf3QSRti7sMqxOjf2dy-AhSpB7j7FnDpJhpzijLtvxaxrDAPeqnRWEhn3eNFT748&usqp=CAU&ec=48600113'),
                        radius: 23,
                      ),
                      kwidth10,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Sreelakmi A K',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700)),
                          Text(
                            'UI/UX Developer',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        child: Icon(CupertinoIcons.ellipsis_vertical),
                        onTap: () => viewOptions(context),
                      ),
                      kwidth10,
                    ],
                  ),
                  kheight10,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '''Just finished with my project for the fosshack 3.0, its a app designed for more effective communication''',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                  kheight10,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width - 70,
                    height: (MediaQuery.of(context).size.width - 70) * 9 / 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDsdihFtjpzXdhC2lzp2nwb1QsfRWVXyLo6aQ87Ydy5eFqshpHKPx4pEcJhL-3DYcIpWZecCcE_Eo&usqp=CAU&ec=48600113'),
                      ),
                    ),
                  ),
                  kheight10,
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'View Project',
                          style: TextStyle(
                            color: Color.fromARGB(255, 38, 57, 155),
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  kheight10
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kwidth10,
              ValueListenableBuilder(
                  valueListenable: clapNotifier,
                  builder: (context, newvalue, _) {
                    if (newvalue) {
                      return Text(
                        'You and ${tempClapCount} others',
                        style: TextStyle(fontSize: 11.5),
                      );
                    } else {
                      return Text(
                        'Reo George and ${tempClapCount - 1} others',
                        style: TextStyle(fontSize: 11.5),
                      );
                    }
                  }),
              Spacer(),
              GestureDetector(
                child: Transform.translate(
                  offset: Offset(-3, -15),
                  child: ValueListenableBuilder(
                      valueListenable: clapNotifier,
                      builder: (context, newvalue, _) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: newvalue
                                  ? Colors.orange
                                  : kblack.withOpacity(0.5),
                              child: Text('👏'),
                            ),
                            CircleAvatar(
                              radius: 17,
                              backgroundColor: kwhite,
                              child: AnimatedScale(
                                duration: Duration(milliseconds: 50),
                                scale: newvalue ? 1.2 : 1,
                                child: Text(
                                  '👏',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                onTap: () {
                  clapNotifier.value = !clapNotifier.value;
                  clapNotifier.notifyListeners();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

viewOptions(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text(
                'Show Profile',
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'Unfollow',
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'mute',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      });
}
