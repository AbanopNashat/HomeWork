import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubits/cubit/news_cubit.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<CategoryCard> cards = const [
    CategoryCard(image: "assets/images/business.jpeg", description: "Business"),
    CategoryCard(
      image: "assets/images/entertainment.jpeg",
      description: "Entertainment",
    ),
    CategoryCard(image: "assets/images/general.jpeg", description: "General"),
    CategoryCard(image: "assets/images/health.png", description: "Health"),
    CategoryCard(image: "assets/images/science.jpeg", description: "Science"),
    CategoryCard(image: "assets/images/sports.jpeg", description: "Sports"),
    CategoryCard(
      image: "assets/images/technology.jpeg",
      description: "Technology",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text("Cloud", style: TextStyle(color: Colors.amber)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryListView(cards: cards)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          NewsListViewBuilder(category: "general"),
        ],
      ),
      //Column(
      //   children: [
      //     CategoryListView(cards: cards),
      //     SizedBox(height: 16),
      //     Expanded(child: NewsListView()),
      //   ],
      // ),
    );
  }
}
