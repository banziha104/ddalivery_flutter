class Const{
  static final _WebConst webConst = _WebConst();
}

class _WebConst{
  final _baseUrl = "http://ec2-13-125-159-142.ap-northeast-2.compute.amazonaws.com:11000/ddalivery/api/";
  get baseUrl => _baseUrl;

  String buildWithBaseUrl(String url){
    return "$baseUrl$url";
  }
}