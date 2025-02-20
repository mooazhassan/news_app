import 'package:flutter/material.dart';
import 'package:news_appp/data/api/api_manager.dart';

import 'package:news_appp/models/categoryDM.dart';
import 'package:news_appp/presentation/screens/home/tabs/categories/category_details/widgets/source_tab_widget/source_tab_widget.dart';


import '../../../../../../../data/models/s_response/sources.dart';


class CategoryDetails extends StatelessWidget {
  CategoryDetails({super.key, required this.categoryDM});

  CategoryDM categoryDM;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiManager.getSources(categoryDM.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.data?.status == 'error' || snapshot.hasError) {
          return Text('errror');
        }
        List<Sources> sources = snapshot.data?.sources ?? [];
        return SourceTabWidget(sources: sources);
      },
    );
  }
}
