class GetFeaturedPostModel{

 final List<FeaturedPost> list;

 GetFeaturedPostModel({this.list});

 factory GetFeaturedPostModel.fromJson(Map<String, dynamic> json){
   var list = json['list'];
   return GetFeaturedPostModel(
     list:  list != null ? list.map((i)=>FeaturedPost.fromJson(i)).toList() : new List<FeaturedPost>()
   );
 }

}

class FeaturedPost{

  final String description;
  final String mediaUrl;
  final String mediaType;
  final List<FeaturedUser> likeList;
  final FeaturedComment comment;
  final FeaturedUser user;

  FeaturedPost({this.description, this.mediaUrl, this.mediaType, this.likeList, this.comment, this.user});

  factory FeaturedPost.fromJson(Map<String, dynamic> json){
    var list = json['likeList'];
    var comment = json['comment'];
    return new FeaturedPost(
    description: json['description'],
    mediaUrl: json['mediaUrl'],
    mediaType: json['mediaType'],
    likeList: list != null ? list.map((i)=>FeaturedUser.fromJson(i)).toList(): new List<FeaturedUser>(),
    comment: comment != null ? FeaturedComment.fromJson(comment) : new FeaturedComment()  
    );
  }

}

class FeaturedUser{

  String name;
  String username;
  String avatar;

  FeaturedUser({this.name, this.username, this.avatar});

  FeaturedUser.fromJson(Map<String, dynamic> json){
     this.name = json['name'];
     this.username = json['username'];
     this.avatar = json['avatar'];
  }

}

class FeaturedComment{
  String description;
  String userId;
  String username;
  FeaturedComment({this.description, this.userId, this.username});
  FeaturedComment.fromJson(Map<String, dynamic> json){
     this.description = json['description'];
     this.userId = json['userId'];
     this.username = json['username'];
  }
}
