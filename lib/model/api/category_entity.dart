import 'package:ddaliveryflutter/generated/json/base/json_convert_content.dart';

class CategoryEntity with JsonConvert<CategoryEntity> {
	String code;
	String message;
	List<CategoryData> data;
}

class CategoryData with JsonConvert<CategoryData> {
	int categoryId;
	String categoryName;
	String image;
}
