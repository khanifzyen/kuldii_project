import 'package:flutter/foundation.dart';

class Product {
  @required
  String judul;
  @required
  String imageURL;
  @required
  num harga;
  @required
  String deskripsi;

  Product(this.judul, this.imageURL, this.harga, this.deskripsi);
}
