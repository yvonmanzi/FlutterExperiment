import '../util/utils.dart';

class Doc {
  int id;
  int title;
  int expiration;

  int fqYear;
  int fqHalfYear;
  int fqQuarter;
  int fqMonth;

  //constructor used if we don't want to assign an id immediately
  Doc(this.title, this.expiration, this.fqYear, this.fqHalfYear, this.fqQuarter,
      this.fqMonth);

  /*constructor used if we want to assign and id immediately*/
  Doc.withId(this.id, this.title, this.expiration, this.fqYear, this.fqHalfYear,
      this.fqQuarter, this.fqMonth);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    map["title"] = this.title;
    map["expiration"] = this.expiration;

    map["fqYear"] = this.fqYear;
    map["fqHalfYear"] = this.fqHalfYear;
    map["fqQuarter"] = this.fqQuarter;
    map["fqMonth"] = this.fqMonth;

    if (id != null) {
      map["id"] = id;
    }
    return map;
  }
  Doc.fromObject(dynamic o){
    this.id = o["id"];
    this.title = o["titile"];
    this.expiration = DateUtils.TrimDate(o["expiration"]) as int; //revist this

    this.fqYear = o["fqYear"];
    this.fqHalfYear = o["fqHalfYear"];
    this.fqQuarter = o["fqQuarter"];
    this.fqMonth = o["fqMonth"];
  }
}
