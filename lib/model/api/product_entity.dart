import 'package:ddaliveryflutter/generated/json/base/json_convert_content.dart';

class ProductEntity with JsonConvert<ProductEntity> {
	String code;
	String message;
	List<ProductData> data;
}

class ProductData with JsonConvert<ProductData> {
	int productId;
	String productName;
	String image;
	String description;
	int price;
	int recommendedRateCount;
	int recommendedUserCount;
	ProductDataSeller seller;
	ProductDataCategory category;
}

class ProductDataSeller with JsonConvert<ProductDataSeller> {
	int sellerId;
	String sellerName;
	String image;
	String address;
	double latitude;
	double longitude;
}

class ProductDataCategory with JsonConvert<ProductDataCategory> {
	int categoryId;
	String categoryName;
	String image;
}
