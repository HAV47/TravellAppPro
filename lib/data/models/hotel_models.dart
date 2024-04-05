

class HotelModels {
  HotelModels({
    required this.hotelImages,
    required this.hotelName,
    required this.awayKilometer,
    required this.location,
    required this.numberOfReview,
    required this.price,
    required this.star,
  });

  final String hotelImages;
  final String hotelName;
  final String location;
  final String awayKilometer;
  final double star;
  final int numberOfReview;
  final int price;
}
