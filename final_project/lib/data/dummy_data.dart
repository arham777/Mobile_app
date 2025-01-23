import '../models/meal.dart';

final List<Meal> dummyMeals = [
  Meal(
    title: 'Spaghetti Carbonara',
    description: 'Classic Italian pasta dish with eggs, cheese, pancetta, and black pepper. Made with authentic ingredients and traditional recipe.',
    imageUrl: 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg',
    rating: 4.5,
    price: 12.99,
    reviews: [
      Review(
        userName: 'John Doe',
        rating: 4.5,
        comment: 'Absolutely delicious! Perfect balance of flavors.',
      ),
      Review(
        userName: 'Jane Smith',
        rating: 4.0,
        comment: 'Great dish, but could use a bit more pepper.',
      ),
    ],
  ),
  Meal(
    title: 'Margherita Pizza',
    description: 'Traditional Neapolitan pizza with fresh basil, mozzarella, tomatoes, and extra virgin olive oil.',
    imageUrl: 'https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg',
    rating: 4.8,
    price: 14.99,
    reviews: [
      Review(
        userName: 'Mike Wilson',
        rating: 5.0,
        comment: 'Best pizza in town! Authentic Italian taste.',
      ),
    ],
  ),
  // Adding 5 more meals
  Meal(
    title: 'Grilled Salmon',
    description: 'Fresh Atlantic salmon fillet grilled to perfection with lemon herb butter, served with roasted vegetables.',
    imageUrl: 'https://images.pexels.com/photos/3763847/pexels-photo-3763847.jpeg',
    rating: 4.7,
    price: 24.99,
    reviews: [
      Review(
        userName: 'Sarah Johnson',
        rating: 4.7,
        comment: 'Perfectly cooked and seasoned! The vegetables were fresh.',
      ),
    ],
  ),
  Meal(
    title: 'Beef Burger Deluxe',
    description: 'Premium beef patty with melted cheddar, crispy bacon, fresh lettuce, tomatoes, and special sauce.',
    imageUrl: 'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg',
    rating: 4.6,
    price: 16.99,
    reviews: [
      Review(
        userName: 'David Brown',
        rating: 4.6,
        comment: 'Juicy and flavorful! Best burger I\'ve had in a while.',
      ),
    ],
  ),
  Meal(
    title: 'Caesar Salad',
    description: 'Crisp romaine lettuce, garlic croutons, parmesan cheese, and classic Caesar dressing.',
    imageUrl: 'https://images.pexels.com/photos/1059905/pexels-photo-1059905.jpeg',
    rating: 4.3,
    price: 11.99,
    reviews: [
      Review(
        userName: 'Emma Davis',
        rating: 4.3,
        comment: 'Fresh and crispy! The dressing was perfect.',
      ),
    ],
  ),
  Meal(
    title: 'Chocolate Lava Cake',
    description: 'Warm chocolate cake with a molten center, served with vanilla ice cream and fresh berries.',
    imageUrl: 'https://images.pexels.com/photos/132694/pexels-photo-132694.jpeg',
    rating: 4.9,
    price: 8.99,
    reviews: [
      Review(
        userName: 'Lisa Anderson',
        rating: 4.9,
        comment: 'Heaven on a plate! The warm chocolate center was perfect.',
      ),
    ],
  ),
  Meal(
    title: 'Pad Thai',
    description: 'Traditional Thai stir-fried rice noodles with shrimp, tofu, eggs, and peanuts in tamarind sauce.',
    imageUrl: 'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
    rating: 4.5,
    price: 15.99,
    reviews: [
      Review(
        userName: 'Tom Chen',
        rating: 4.5,
        comment: 'Authentic flavors and generous portions!',
      ),
    ],
  ),
  Meal(
    title: 'Chicken Tikka Masala',
    description: 'Tender chicken in a rich, creamy tomato-based curry sauce, served with basmati rice and naan.',
    imageUrl: 'https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg',
    rating: 4.7,
    price: 17.99,
    reviews: [
      Review(
        userName: 'Raj Patel',
        rating: 4.7,
        comment: 'Perfect balance of spices! Very authentic taste.',
      ),
    ],
  ),
]; 