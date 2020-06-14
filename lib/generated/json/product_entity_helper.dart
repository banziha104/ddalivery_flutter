import 'package:ddaliveryflutter/model/api/product_entity.dart';

productEntityFromJson(ProductEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toString();
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<ProductData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new ProductData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> productEntityToJson(ProductEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

productDataFromJson(ProductData data, Map<String, dynamic> json) {
	if (json['productId'] != null) {
		data.productId = json['productId']?.toInt();
	}
	if (json['productName'] != null) {
		data.productName = json['productName']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['price'] != null) {
		data.price = json['price']?.toInt();
	}
	if (json['recommendedRateCount'] != null) {
		data.recommendedRateCount = json['recommendedRateCount']?.toInt();
	}
	if (json['recommendedUserCount'] != null) {
		data.recommendedUserCount = json['recommendedUserCount']?.toInt();
	}
	if (json['seller'] != null) {
		data.seller = new ProductDataSeller().fromJson(json['seller']);
	}
	if (json['category'] != null) {
		data.category = new ProductDataCategory().fromJson(json['category']);
	}
	return data;
}

Map<String, dynamic> productDataToJson(ProductData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['productId'] = entity.productId;
	data['productName'] = entity.productName;
	data['image'] = entity.image;
	data['description'] = entity.description;
	data['price'] = entity.price;
	data['recommendedRateCount'] = entity.recommendedRateCount;
	data['recommendedUserCount'] = entity.recommendedUserCount;
	if (entity.seller != null) {
		data['seller'] = entity.seller.toJson();
	}
	if (entity.category != null) {
		data['category'] = entity.category.toJson();
	}
	return data;
}

productDataSellerFromJson(ProductDataSeller data, Map<String, dynamic> json) {
	if (json['sellerId'] != null) {
		data.sellerId = json['sellerId']?.toInt();
	}
	if (json['sellerName'] != null) {
		data.sellerName = json['sellerName']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	if (json['address'] != null) {
		data.address = json['address']?.toString();
	}
	if (json['latitude'] != null) {
		data.latitude = json['latitude']?.toDouble();
	}
	if (json['longitude'] != null) {
		data.longitude = json['longitude']?.toDouble();
	}
	return data;
}

Map<String, dynamic> productDataSellerToJson(ProductDataSeller entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sellerId'] = entity.sellerId;
	data['sellerName'] = entity.sellerName;
	data['image'] = entity.image;
	data['address'] = entity.address;
	data['latitude'] = entity.latitude;
	data['longitude'] = entity.longitude;
	return data;
}

productDataCategoryFromJson(ProductDataCategory data, Map<String, dynamic> json) {
	if (json['categoryId'] != null) {
		data.categoryId = json['categoryId']?.toInt();
	}
	if (json['categoryName'] != null) {
		data.categoryName = json['categoryName']?.toString();
	}
	if (json['image'] != null) {
		data.image = json['image']?.toString();
	}
	return data;
}

Map<String, dynamic> productDataCategoryToJson(ProductDataCategory entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['categoryId'] = entity.categoryId;
	data['categoryName'] = entity.categoryName;
	data['image'] = entity.image;
	return data;
}