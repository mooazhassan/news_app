import 'package:flutter/material.dart';
import 'package:news_appp/presentation/screens/home/tabs/categories/category_details/widgets/source_tab_widget/source_item_widget.dart';

import '../../../../../../../../../data/models/s_response/sources.dart';
import '../../../../article_list_widget/article_list_widget.dart';

class SourceTabWidget extends StatefulWidget {
  SourceTabWidget({super.key, required this.sources});

  List<Sources> sources;

  @override
  State<SourceTabWidget> createState() => _SourceTabWidgetState();
}

class _SourceTabWidgetState extends State<SourceTabWidget> {
  int selectedtab = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
            onTap: (index) {
              selectedtab = index;
              setState(() {});
            },
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 6),
            tabs: widget.sources
                .map(
                  (source) => SourceItemWidget(
                    source: source,
                    isSelected: widget.sources.indexOf(source) == selectedtab,
                  ),
                )
                .toList(),
          ),
        ),
        ArticleListWidget(source: widget.sources[selectedtab]),
      ],
    );
  }
}
