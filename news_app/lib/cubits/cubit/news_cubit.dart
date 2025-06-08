import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  void fetchTopHeadLines({required String category}) async {
    emit(LoadingState());
    try {
      var data = await NewsServices(Dio()).getTopHeadLines(category: category);
      emit(SuccessState(articles: data));
    } on Exception catch (e) {
      // TODO
      emit(FaliureState());
    }
  }
}
