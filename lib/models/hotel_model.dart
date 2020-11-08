class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  int review;


  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
    this.review,
  });
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Holiday Inn Paris',
    address: '404 paradise road',
    review: 100,
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Antica Locanda Sturion',
    address: '404 paradise road',
    review: 95,
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel Boutique',
    address: '404 paradise road',
    review: 105,
    price: 240,
  ),
];