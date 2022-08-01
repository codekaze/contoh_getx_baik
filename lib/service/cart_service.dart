class CartService {
  static List carts = [
    {
      "product_name": "Orange",
      "photo":
          "https://i.ibb.co/RBQM1W5/photo-1503508343067-c4103b7140b3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "qty": 0,
    },
    {
      "product_name": "Tomato",
      "photo":
          "https://i.ibb.co/3FC7Dkn/photo-1534940519139-f860fb3c6e38-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 33,
      "qty": 0,
    },
    {
      "product_name": "Pineapple",
      "photo":
          "https://i.ibb.co/wpMb7XR/photo-1461439626172-c3b891456f2e-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 41,
      "qty": 0,
    },
    {
      "product_name": "Avocado",
      "photo":
          "https://i.ibb.co/vqHkqmY/photo-1596755389378-c31d21fd1273-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "price": 25,
      "qty": 0,
    }
  ];

  Future<List> getCarts() async {
    return Future.value(carts);
  }

  void addCart(Map item) {
    carts.add(item);
  }
}
