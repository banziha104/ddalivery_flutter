import 'package:ddaliveryflutter/model/api/category_entity.dart';

categoryEntityFromJson(CategoryEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code']?.toString();
	}
	if (json['message'] != null) {
		data.message = json['message']?.toString();
	}
	if (json['data'] != null) {
		data.data = new List<CategoryData>();
		(json['data'] as List).forEach((v) {
			data.data.add(new CategoryData().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> categoryEntityToJson(CategoryEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['message'] = entity.message;
	if (entity.data != null) {
		data['data'] =  entity.data.map((v) => v.toJson()).toList();
	}
	return data;
}

categoryDataFromJson(CategoryData data, Map<String, dynamic> json) {
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

Map<String, dynamic> categoryDataToJson(CategoryData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['categoryId'] = entity.categoryId;
	data['categoryName'] = entity.categoryName;
	data['image'] = entity.image;
	return data;
}