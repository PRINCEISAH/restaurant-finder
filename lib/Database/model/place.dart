class PlaceDetail {
  String icon;
  String id;
  String name;
  String rating;
  String vicinity;

  String address;
  String phone_number;
  List<String> weekday_text;
  String url;

  PlaceDetail(this.id, this.name, this.icon, this.rating, this.vicinity,
      [this.address, this.phone_number, this.weekday_text]);

  @override
  String toString() {
    print("${name},${phone_number},${rating},${id},${icon}");
    return super.toString();
  }
}
