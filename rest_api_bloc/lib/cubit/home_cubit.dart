import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:rest_api_bloc/model.dart';
import 'package:rest_api_bloc/services/home_service.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.homeService,
  ) : super(const HomeState());
  final HomeService homeService;

  Future<void> getUsers() async {
    final users = await homeService.getUser();
    if (users != null) {
      emit(HomeState(status: FetchStatus.success, users: users));
    } else {
      emit(const HomeState(status: FetchStatus.error));
    }
  }
}
