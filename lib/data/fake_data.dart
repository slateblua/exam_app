import 'menu_item.dart';

class FakeData {
  static List<MenuItem> menuItems = [
    MenuItem(
      id: 1,
      title: 'Spaghetti Carbonara',
      description:
          'A classic Roman pasta dish made with eggs, hard cheese, cured pork, and black pepper.',
      category: MenuCategory.entree,
      ingredients: [
        'Spaghetti',
        'Eggs',
        'Pecorino Romano Cheese',
        'Guanciale',
        'Black Pepper'
      ],
    ),
    MenuItem(
      id: 2,
      title: 'Margherita Pizza',
      description:
          'A simple yet delicious pizza topped with San Marzano tomatoes, fresh mozzarella, basil, salt, and extra-virgin olive oil.',
      category: MenuCategory.entree,
      ingredients: [
        'Pizza Dough',
        'San Marzano Tomatoes',
        'Fresh Mozzarella',
        'Fresh Basil',
        'Olive Oil',
        'Salt'
      ],
    ),
    MenuItem(
      id: 2,
      title: 'Caesar Salad',
      description:
          'A green salad of romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Romaine Lettuce',
        'Croutons',
        'Parmesan Cheese',
        'Caesar Dressing',
        'Lemon Juice'
      ],
    ),
    MenuItem(
      id: 3,
      title: 'Tiramisu',
      description:
          'A coffee-flavoured Italian dessert. It is made of ladyfingers (savoiardi) dipped in coffee, layered with a whipped mixture of eggs, sugar, and mascarpone cheese, flavoured with cocoa.',
      category: MenuCategory.dessert,
      ingredients: [
        'Ladyfingers',
        'Espresso',
        'Mascarpone Cheese',
        'Eggs',
        'Sugar',
        'Cocoa Powder'
      ],
    ),

    MenuItem(
      id: 4,
      title: 'Lasagna',
      description:
          'A traditional Italian dish made of stacked layers of pasta alternated with sauces and ingredients such as meats, vegetables, and cheese.',
      category: MenuCategory.entree,
      ingredients: [
        'Lasagna Noodles',
        'Ground Beef or Pork',
        'Tomato Sauce',
        'Ricotta Cheese',
        'Mozzarella Cheese',
        'Parmesan Cheese',
        'Herbs and Spices'
      ],
    ),

    MenuItem(
      id: 5,
      title: 'Cheesecake',
      description:
          'A rich dessert consisting of a mixture of soft, fresh cheese, eggs, and sugar on a crust made from crushed cookies or graham crackers.',
      category: MenuCategory.dessert,
      ingredients: [
        'Cream Cheese',
        'Sugar',
        'Eggs',
        'Graham Crackers or Cookies',
        'Butter',
        'Vanilla Extract'
      ],
    ),

    MenuItem(
      id: 6,
      title: 'Minestrone Soup',
      description:
          'A thick soup of Italian origin made with vegetables, often with the addition of pasta or rice.',
      category: MenuCategory.entree,
      ingredients: [
        'Mixed Vegetables',
        'Beans',
        'Pasta',
        'Tomato Broth',
        'Herbs and Spices'
      ],
    ),

    MenuItem(
      id: 7,
      title: 'Risotto alla Milanese',
      description:
          'A traditional Italian rice dish from Milan made with saffron, giving it a distinctive yellow color and rich flavor.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Arborio Rice',
        'Saffron',
        'Chicken Broth',
        'Onion',
        'Parmesan Cheese',
        'Butter'
      ],
    ),

    MenuItem(
      id: 8,
      title: 'Bruschetta',
      description:
          'An antipasto consisting of grilled bread rubbed with garlic and topped with olive oil and salt, often with additional toppings like tomatoes, vegetables, beans, cured meat, or cheese.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Baguette or Italian Bread',
        'Garlic',
        'Olive Oil',
        'Tomatoes',
        'Basil',
        'Salt and Pepper'
      ],
    ),

    MenuItem(
      id: 9,
      title: 'Gelato',
      description:
          'An Italian-style ice cream that is denser and creamier than traditional ice cream, made with more milk and less cream.',
      category: MenuCategory.dessert,
      ingredients: [
        'Milk',
        'Sugar',
        'Flavorings (e.g., chocolate, vanilla, fruit)',
        'Egg Yolks (optional)'
      ],
    ),

    MenuItem(
      id: 10,
      title: 'Focaccia',
      description:
          'A flat oven-baked Italian bread similar in style and texture to pizza dough, often topped with herbs, olives, or other ingredients.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Flour',
        'Yeast',
        'Olive Oil',
        'Salt',
        'Herbs (e.g., rosemary)'
      ],
    ),

    MenuItem(
      id: 11,
      title: 'Caprese Salad',
      description:
          'A simple Italian salad made of sliced fresh mozzarella, tomatoes, and sweet basil, seasoned with salt and olive oil.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Fresh Mozzarella',
        'Tomatoes',
        'Fresh Basil',
        'Olive Oil',
        'Salt and Pepper'
      ],
    ),

    MenuItem(
      id: 12,
      title: 'Osso Buco',
      description:
          'A Milanese specialty of braised veal shanks cooked with vegetables, white wine, and broth, often served with gremolata and risotto.',
      category: MenuCategory.entree,
      ingredients: [
        'Veal Shanks',
        'Carrots',
        'Celery',
        'Onion',
        'White Wine',
        'Beef Broth',
        'Gremolata (lemon zest, garlic, parsley)'
      ],
    ),

    MenuItem(
      id: 13,
      title: 'Panna Cotta',
      description:
          'An Italian dessert made of sweetened cream thickened with gelatin and molded, often served with berries or caramel sauce.',
      category: MenuCategory.dessert,
      ingredients: [
        'Heavy Cream',
        'Sugar',
        'Gelatin',
        'Vanilla Extract',
        'Berries or Caramel Sauce'
      ],
    ),

    MenuItem(
      id: 4,
      title: 'Arancini',
      description:
          'Fried rice balls coated with breadcrumbs, typically filled with ragù, mozzarella, and peas.',
      category: MenuCategory.appetizer,
      ingredients: [
        'Cooked Rice',
        'Ragù Sauce',
        'Mozzarella Cheese',
        'Peas',
        'Breadcrumbs',
        'Eggs',
        'Oil for Frying'
      ],
    ),
  ];
}