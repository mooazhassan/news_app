import 'source.dart';

/// source : {"id":"abc-news-au","name":"ABC News (AU)"}
/// author : "Laura Mayers"
/// title : "Man charged with upskirting more than 100 children in Victoria"
/// description : "A western Victorian man has been denied bail after being charged with filming intimate images of more than 100 young girls in Melbourne and Ballarat."
/// url : "https://www.abc.net.au/news/2025-02-10/ballarat-derek-grima-charged-child-abuse-intimate-images-upskirt/104919402"
/// urlToImage : "https://live-production.wcms.abc-cdn.net.au/5b1967892afe8f1e78bf76768a887353?impolicy=wcms_watermark_news&cropH=2268&cropW=4032&xPos=0&yPos=509&width=862&height=485&imformat=generic"
/// publishedAt : "2025-02-10T09:17:02Z"
/// content : "A western Victorian man has been denied bail after being charged with allegedly filming intimate \"upskirt\" images and videos of more than 100 young girls in Melbourne and Ballarat. \r\nDerek Anthony Gr… [+2260 chars]"

class Articles {
  Articles({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Articles.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}