class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}

final products = [
  Item(
    id: "Cata001",
    name: "IPhone 12 pro max",
    desc: "APPLE IPHONE 12 GENERATION ,",
    price: 999,
    color: "#33505a",
    image: "https://www.apple.com/newsroom/images/product/iphone/standard/apple_iphone-12-spring21_purple_04202021_big.jpg.large.jpg"
    
  )
];
