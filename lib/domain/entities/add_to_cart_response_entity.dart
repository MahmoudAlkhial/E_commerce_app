class AddToCartResponseEntity {
  AddToCartResponseEntity({
    this.status,
    this.message,
    this.numOfCartItems,
    this.cartId,
    this.data,
  });

  String? status;
  String? message;
  num? numOfCartItems;
  String? cartId;
  AddToCartEntity? data;
}

class AddToCartEntity {
  AddToCartEntity({
    this.id,
    this.cartOwner,
    this.products,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.totalCartPrice,
  });

  String? id;
  String? cartOwner;
  List<AddToCartProductsEntity>? products;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? totalCartPrice;
}

class AddToCartProductsEntity {
  AddToCartProductsEntity({
    this.count,
    this.id,
    this.product,
    this.price,
  });

  num? count;
  String? id;
  String? product;
  num? price;
}
