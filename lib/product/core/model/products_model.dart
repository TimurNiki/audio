class Product {
  final String id;
  final String name;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
  });
}

class Category {
  final String name;
  final List<Product> products;

  Category({
    required this.name,
    required this.products,
  });
}

// Example categories with products
final List<Category> categories = [
  Category(
    name: 'Headphones',
    products: [
      Product(
        id: '1',
        name: 'OnePlus Headphone',
        price: 149.99,
        description: 'High-quality sound and comfortable fit.',
        imageUrl: 'https://example.com/images/oneplus_headphone.jpg',
      ),
      Product(
        id: '2',
        name: 'Logitech Headphone',
        price: 99.99,
        description: 'Durable and reliable headphones for gaming.',
        imageUrl: 'https://example.com/images/logitech_headphone.jpg',
      ),
      Product(
        id: '3',
        name: 'Sony Headphone',
        price: 199.99,
        description:
            'Noise-cancelling headphones with excellent sound quality.',
        imageUrl: 'https://example.com/images/sony_headphone.jpg',
      ),
      Product(
        id: '4',
        name: 'Bose Headphone',
        price: 299.99,
        description: 'Premium headphones with superior comfort.',
        imageUrl: 'https://example.com/images/bose_headphone.jpg',
      ),
      Product(
        id: '5',
        name: 'JBL Headphone',
        price: 79.99,
        description: 'Affordable headphones with great sound quality.',
        imageUrl: 'https://example.com/images/jbl_headphone.jpg',
      ),
    ],
  ),
  Category(
    name: 'Earpads',
    products: [
      Product(
        id: '11',
        name: 'Memory Foam Earpads',
        price: 19.99,
        description:
            'Replacement earpads made of memory foam for maximum comfort.',
        imageUrl: 'https://example.com/images/earpads.jpg',
      ),
      Product(
        id: '12',
        name: 'Leather Earpads',
        price: 24.99,
        description: 'Soft leather earpads for enhanced audio experience.',
        imageUrl: 'https://example.com/images/leather_earpads.jpg',
      ),
      Product(
        id: '13',
        name: 'Gel Earpads',
        price: 29.99,
        description: 'Cooling gel earpads for long listening sessions.',
        imageUrl: 'https://example.com/images/gel_earpads.jpg',
      ),
      Product(
        id: '14',
        name: 'Standard Earpads',
        price: 14.99,
        description: 'Standard replacement earpads for various models.',
        imageUrl: 'https://example.com/images/standard_earpads.jpg',
      ),
      Product(
        id: '15',
        name: 'Sport Earpads',
        price: 19.99,
        description: 'Sweat-resistant earpads for athletes.',
        imageUrl: 'https://example.com/images/sport_earpads.jpg',
      ),
    ],
  ),
  Category(
    name: 'Cables',
    products: [
      Product(
        id: '16',
        name: 'Braided Audio Cable',
        price: 14.99,
        description: 'Durable braided audio cable for connecting devices.',
        imageUrl: 'https://example.com/images/cable.jpg',
      ),
      Product(
        id: '17',
        name: 'USB-C to 3.5mm Cable',
        price: 9.99,
        description: 'Connector cable for modern devices.',
        imageUrl: 'https://example.com/images/usb_c_cable.jpg',
      ),
      Product(
        id: '18',
        name: 'HDMI to Audio Cable',
        price: 19.99,
        description: 'HDMI cable with audio output feature.',
        imageUrl: 'https://example.com/images/hdmi_audio_cable.jpg',
      ),
      Product(
        id: '19',
        name: 'Auxiliary Cable',
        price: 12.99,
        description: 'Standard auxiliary cable for audio devices.',
        imageUrl: 'https://example.com/images/aux_cable.jpg',
      ),
      Product(
        id: '20',
        name: 'Optical Cable',
        price: 29.99,
        description: 'High-quality optical cable for digital audio.',
        imageUrl: 'https://example.com/images/optical_cable.jpg',
      ),
    ],
  ),
];
