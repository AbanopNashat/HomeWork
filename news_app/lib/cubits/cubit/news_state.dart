part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}

class LoadingState extends NewsState {}

class SuccessState extends NewsState {
  final List<ArticleModel> articles;

  SuccessState({required this.articles});
}

class FaliureState extends NewsState {}

class NoNewsState extends NewsState {}
