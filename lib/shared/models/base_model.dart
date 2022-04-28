class BaseModel {
  String collection;
  BaseModel({
    required this.collection,
  });
  Map<String, dynamic> toMap() {
    throw "Not Implemented";
  }

  factory BaseModel.fromMap(Map<String, dynamic> map) {
    throw "Not Implemented";
  }
}
