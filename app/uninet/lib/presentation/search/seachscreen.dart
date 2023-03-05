import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uninet/core/constants/constants.dart';
import 'package:uninet/domain/search/search.dart';
import 'package:uninet/presentation/search/widgets/recentspart.dart';

import 'package:uninet/presentation/search/widgets/searchtabpart.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final searchController = TextEditingController();
  final ValueNotifier<String> searchQueryNotifier = ValueNotifier('');
  final ValueNotifier<List> userSearchNotifier = ValueNotifier([]);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kheight20,
            kheight20,
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Search',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 14, right: 14, top: 14, bottom: 25),
              child: SizedBox(
                height: 35,
                child: Center(
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      // userSearchNotifier.value =
                      getUserSearchResult(query: value);
                      searchQueryNotifier.value = value;
                      searchQueryNotifier.notifyListeners();
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 2),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                        suffixIcon: Icon(CupertinoIcons.search)),
                  ),
                ),
              ),
            ),
            ValueListenableBuilder(
                valueListenable: searchQueryNotifier,
                builder: (context, string, _) {
                  if (string == '') {
                    return Expanded(
                      child: RecentPart(),
                    );
                  } else {
                    return Expanded(
                      child: SearchResultPart(
                        query: string,
                      ),
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
