import 'package:flutter_bloc/flutter_bloc.dart';

class ImageListCubit extends Cubit<String> {
  ImageListCubit() : super("");

  void updateQueryKeyword(String keyword) => emit(keyword);
}
