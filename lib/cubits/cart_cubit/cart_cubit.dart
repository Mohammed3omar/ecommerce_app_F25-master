import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/model/cart_model.dart';
import 'package:meta/meta.dart';

import '../../repository/cart_repository.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  void getAllCategories() async {
    try {
      emit(LoadingCart());
      final listOfCategories = await CartRepository().getAllCategories();
      emit(CartSuccess(listOfCategories));
    } on SocketException catch (e) {
      emit(NoInternetConnection());
    } on Exception catch (e) {
      emit(ErrorInCart(e));
    }
  }
}
