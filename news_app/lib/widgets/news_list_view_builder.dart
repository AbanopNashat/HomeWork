import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getTopHeadLines(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text("oops there was an error,try later"),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: const CircularProgressIndicator()),
          );
        }
      },
    );
    // return isLoading
    //     ? SliverToBoxAdapter(
    //       child: Center(child: const CircularProgressIndicator()),
    //     )
    //     : articles.isNotEmpty
    //     ? NewsListView(articles: articles)
    //     : SliverToBoxAdapter(child: Text("oops there was an error,try later"));
  }
}
