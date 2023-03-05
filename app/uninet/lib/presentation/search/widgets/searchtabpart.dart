import 'package:flutter/material.dart';
import 'package:uninet/core/colors/colors.dart';
import 'package:uninet/presentation/search/widgets/groupresult.dart';
import 'package:uninet/presentation/search/widgets/peopleresult.dart';
import 'package:uninet/presentation/search/widgets/projectsresult.dart';

class SearchResultPart extends StatefulWidget {
  const SearchResultPart({super.key, required this.query});
  final String query;
  @override
  State<SearchResultPart> createState() => _SearchResultPartState();
}

class _SearchResultPartState extends State<SearchResultPart>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TabBar(
            controller: tabController,
            tabs: [
              TabText(text: 'Projects'),
              TabText(text: 'People'),
              // TabText(text: 'Groups'),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              ProjectsResult(
                query: widget.query,
              ),
              PeopleResult(
                query: widget.query,
              ),
              // GroupResult(),
            ],
          ),
        )
      ],
    );
  }
}

class TabText extends StatelessWidget {
  const TabText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: kblack, fontSize: 18),
    );
  }
}
