import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/cubit/news_cubit.dart';
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
  @override
  // void initState() {
  //   super.initState();
  //   BlocProvider.of<NewsCubit>(
  //     context,
  //   ).fetchTopHeadLines(category: widget.category);
  //here i should provide the cubit to the home view to work and it only works with the home page but not with the categories views
  // }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..fetchTopHeadLines(category: widget.category),
      child: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state is FaliureState) {
            return const SliverToBoxAdapter(
              child: Center(child: Text("oops there was an error,try later")),
            );
          } else if (state is SuccessState) {
            return NewsListView(articles: state.articles);
          } else if (state is NoNewsState) {
            return SliverToBoxAdapter(
              child: Center(child: Text("oops there is no news at the moment")),
            );
          } else {
            return SliverToBoxAdapter(
              child: Center(child: const CircularProgressIndicator()),
            );
          }
        },
      ),
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

// FutureBuilder<List<ArticleModel>>(
//         future: future,
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return NewsListView(articles: snapshot.data!);
//           } else if (snapshot.hasError) {
//             return const SliverToBoxAdapter(
//               child: Text("oops there was an error,try later"),
//             );
//           } else {
//             return SliverToBoxAdapter(
//               child: Center(child: const CircularProgressIndicator()),
//             );
//           }
//         },
//       ),
