part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}
class CartSuccess extends CartState {
  List<CartModel> list;
  CartSuccess(this.list);
}
class LoadingCart extends CartState {}

class ErrorInCart extends CartState {
  Exception error;

  ErrorInCart(this.error);
}
class NoInternetConnection extends CartState {}



