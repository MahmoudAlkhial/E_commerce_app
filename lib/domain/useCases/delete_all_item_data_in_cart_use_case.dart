import 'package:dartz/dartz.dart';
import 'package:e_commerce_app_c11/domain/repository/cart_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/get_cart_response_entity.dart';
import '../error.dart';

@injectable
class DeleteAllItemDataInCartUseCase {
  CartRepository cartRepository;

  DeleteAllItemDataInCartUseCase({required this.cartRepository});

  Future<Either<Failures, GetCartResponseEntity>> deleteCartData() async {
    var either = await cartRepository.deleteAllCartData();
    return either.fold((l) => Left(l), (r) => Right(r));
  }
}
