class Burger {
  final String name;
  final String image;
  final String distance;
  final double price;
  final double rating;
  final String description;
  bool isfavorited;
  Burger({
    required this.name,
    required this.image,
    required this.distance,
    required this.price,
    required this.rating,
    required this.description,
    this.isfavorited = false,
  });
}

final List<Burger> burgers = [
  Burger(
      name: "Extra Beef Burger",
      image: "images/p3.png",
      distance: "5.3 km",
      price: 99.0,
      rating: 4.8,
      description:
          "A burger, short for hamburger, is a popular food item consisting of a cooked patty-typically made from ground beef-placed inside a sliced bread roll or bun, It often includes various toppings like lettuce, tomato, onions, pickles,cheese, and condiments such as ketchup,mustard, or mayonnaise"),
  Burger(
      name: "Smoked Beef Burger",
      image: "images/p4.png",
      distance: "990 km",
      price: 222.0,
      rating: 4.5,
      description: "A burger, short for hamburger"),
  Burger(
      name: "Fried Chicken Burger",
      image: "images/p5.png",
      distance: "1.3 km",
      price: 120.0,
      rating: 5.0,
      description: "A burger, short for hamburger")
];

List<String> categoryList = ["🍖Beef", "🧀Cheese", "🦐Shrimp", "🍕Pizza"];
