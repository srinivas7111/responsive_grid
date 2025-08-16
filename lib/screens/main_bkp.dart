/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexible Responsive Grid Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveGridPage(),
    );
  }
}

class ResponsiveGridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Responsive Grid'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Example 1: Mixed content grid
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mixed Content Grid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 400,
                    child: FlexibleResponsiveGrid<GridItemData>(
                      items: _getMixedGridItems(),
                      itemBuilder: (context, item, responsiveData) {
                        return _buildMixedGridItem(
                            context, item, responsiveData);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Example 2: Icon grid
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Icon Grid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 300,
                    child: FlexibleResponsiveGrid<IconGridItem>(
                      items: _getIconGridItems(),
                      itemBuilder: (context, item, responsiveData) {
                        return _buildIconGridItem(
                            context, item, responsiveData);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Example 3: Card grid
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card Grid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 350,
                    child: FlexibleResponsiveGrid<CardGridItem>(
                      items: _getCardGridItems(),
                      itemBuilder: (context, item, responsiveData) {
                        return _buildCardGridItem(
                            context, item, responsiveData);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Example 4: Product grid
            /*       Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Grid',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 450,
                    child: FlexibleResponsiveGrid<ProductGridItem>(
                      items: _getProductGridItems(),
                      childAspectRatio: 0.75, // Taller cards for products
                      itemBuilder: (context, item, responsiveData) {
                        return _buildProductGridItem(
                            context, item, responsiveData);
                      },
                    ),
                  ),
                ],
              ),
            ),
        */
          ],
        ),
      ),
    );
  }

  // Sample data generators
  List<GridItemData> _getMixedGridItems() {
    return [
      GridItemData(
          type: GridItemType.text, title: 'Text Item', subtitle: 'Sample text'),
      GridItemData(type: GridItemType.icon, title: 'Home', icon: Icons.home),
      GridItemData(
          type: GridItemType.image,
          title: 'Image',
          subtitle: 'Photo placeholder'),
      GridItemData(
          type: GridItemType.chart,
          title: 'Chart',
          subtitle: 'Data visualization'),
      GridItemData(
          type: GridItemType.icon, title: 'Settings', icon: Icons.settings),
      GridItemData(
          type: GridItemType.text,
          title: 'Another Text',
          subtitle: 'More content'),
      GridItemData(
          type: GridItemType.icon, title: 'Favorite', icon: Icons.favorite),
      GridItemData(
          type: GridItemType.image,
          title: 'Gallery',
          subtitle: 'Image collection'),
    ];
  }

  List<IconGridItem> _getIconGridItems() {
    return [
      IconGridItem(icon: Icons.home, label: 'Home', color: Colors.blue),
      IconGridItem(icon: Icons.settings, label: 'Settings', color: Colors.grey),
      IconGridItem(icon: Icons.favorite, label: 'Favorites', color: Colors.red),
      IconGridItem(
          icon: Icons.shopping_cart, label: 'Cart', color: Colors.green),
      IconGridItem(icon: Icons.person, label: 'Profile', color: Colors.purple),
      IconGridItem(
          icon: Icons.notifications, label: 'Alerts', color: Colors.orange),
      IconGridItem(icon: Icons.search, label: 'Search', color: Colors.teal),
      IconGridItem(icon: Icons.camera, label: 'Camera', color: Colors.indigo),
      IconGridItem(icon: Icons.music_note, label: 'Music', color: Colors.pink),
      IconGridItem(icon: Icons.mail, label: 'Mail', color: Colors.cyan),
    ];
  }

  List<CardGridItem> _getCardGridItems() {
    return [
      CardGridItem(
          title: 'Revenue',
          value: '\$12,345',
          trend: '+5.2%',
          isPositive: true),
      CardGridItem(
          title: 'Users', value: '1,234', trend: '+12%', isPositive: true),
      CardGridItem(
          title: 'Orders', value: '856', trend: '-2.1%', isPositive: false),
      CardGridItem(
          title: 'Growth', value: '23%', trend: '+8.7%', isPositive: true),
      CardGridItem(
          title: 'Conversion', value: '3.2%', trend: '+0.5%', isPositive: true),
      CardGridItem(
          title: 'Bounce Rate', value: '42%', trend: '-1.2%', isPositive: true),
    ];
  }

  List<ProductGridItem> _getProductGridItems() {
    return [
      ProductGridItem(
        id: '1',
        name: 'Wireless Headphones',
        price: 99.99,
        originalPrice: 129.99,
        imageUrl: 'placeholder_headphones', // Using placeholder identifier
        rating: 4.5,
        reviewCount: 128,
        isOnSale: true,
        category: 'Electronics',
      ),
      ProductGridItem(
        id: '2',
        name: 'Smartphone Case',
        price: 24.99,
        originalPrice: null,
        imageUrl: 'placeholder_phone_case',
        rating: 4.2,
        reviewCount: 67,
        isOnSale: false,
        category: 'Accessories',
      ),
      ProductGridItem(
        id: '3',
        name: 'Bluetooth Speaker',
        price: 79.99,
        originalPrice: 99.99,
        imageUrl: 'placeholder_speaker',
        rating: 4.7,
        reviewCount: 203,
        isOnSale: true,
        category: 'Electronics',
      ),
      ProductGridItem(
        id: '4',
        name: 'Laptop Stand',
        price: 39.99,
        originalPrice: null,
        imageUrl: 'placeholder_stand',
        rating: 4.3,
        reviewCount: 89,
        isOnSale: false,
        category: 'Office',
      ),
      ProductGridItem(
        id: '5',
        name: 'Wireless Mouse',
        price: 29.99,
        originalPrice: 39.99,
        imageUrl: 'placeholder_mouse',
        rating: 4.1,
        reviewCount: 156,
        isOnSale: true,
        category: 'Electronics',
      ),
      ProductGridItem(
        id: '6',
        name: 'Coffee Mug',
        price: 14.99,
        originalPrice: null,
        imageUrl: 'placeholder_mug',
        rating: 4.6,
        reviewCount: 92,
        isOnSale: false,
        category: 'Home',
      ),
      ProductGridItem(
        id: '7',
        name: 'Desk Lamp',
        price: 49.99,
        originalPrice: 64.99,
        imageUrl: 'placeholder_lamp',
        rating: 4.4,
        reviewCount: 134,
        isOnSale: true,
        category: 'Home',
      ),
      ProductGridItem(
        id: '8',
        name: 'Notebook Set',
        price: 19.99,
        originalPrice: null,
        imageUrl: 'placeholder_notebook',
        rating: 4.0,
        reviewCount: 45,
        isOnSale: false,
        category: 'Office',
      ),
    ];
  }

  // Item builders
  Widget _buildMixedGridItem(
      BuildContext context, GridItemData item, ResponsiveData responsiveData) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue.shade300,
            Colors.blue.shade600,
          ],
        ),
        borderRadius: BorderRadius.circular(responsiveData.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(responsiveData.itemPadding),
      child: _buildMixedContent(item, responsiveData),
    );
  }

  Widget _buildMixedContent(GridItemData item, ResponsiveData responsiveData) {
    switch (item.type) {
      case GridItemType.icon:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              size: responsiveData.iconSize,
              color: Colors.white,
            ),
            SizedBox(height: responsiveData.spacing / 2),
            Text(
              item.title,
              style: TextStyle(
                fontSize: responsiveData.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case GridItemType.text:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.title,
              style: TextStyle(
                fontSize: responsiveData.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            if (item.subtitle != null) ...[
              SizedBox(height: responsiveData.spacing / 4),
              Text(
                item.subtitle!,
                style: TextStyle(
                  fontSize: responsiveData.fontSize * 0.8,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        );

      case GridItemType.image:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: responsiveData.iconSize,
              height: responsiveData.iconSize,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.image,
                size: responsiveData.iconSize * 0.6,
                color: Colors.white,
              ),
            ),
            SizedBox(height: responsiveData.spacing / 2),
            Text(
              item.title,
              style: TextStyle(
                fontSize: responsiveData.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );

      case GridItemType.chart:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: responsiveData.iconSize,
              height: responsiveData.iconSize * 0.6,
              child: CustomPaint(
                painter: SimpleChartPainter(),
              ),
            ),
            SizedBox(height: responsiveData.spacing / 2),
            Text(
              item.title,
              style: TextStyle(
                fontSize: responsiveData.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        );
    }
  }

  Widget _buildIconGridItem(
      BuildContext context, IconGridItem item, ResponsiveData responsiveData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(responsiveData.borderRadius),
        border: Border.all(color: item.color.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(responsiveData.itemPadding),
            decoration: BoxDecoration(
              color: item.color.withOpacity(0.1),
              borderRadius:
                  BorderRadius.circular(responsiveData.borderRadius / 2),
            ),
            child: Icon(
              item.icon,
              size: responsiveData.iconSize,
              color: item.color,
            ),
          ),
          SizedBox(height: responsiveData.spacing / 2),
          Text(
            item.label,
            style: TextStyle(
              fontSize: responsiveData.fontSize,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade700,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildCardGridItem(
      BuildContext context, CardGridItem item, ResponsiveData responsiveData) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(responsiveData.borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(responsiveData.itemPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.title,
            style: TextStyle(
              fontSize: responsiveData.fontSize * 0.9,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.value,
                style: TextStyle(
                  fontSize: responsiveData.fontSize * 1.4,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
              SizedBox(height: responsiveData.spacing / 4),
              Row(
                children: [
                  Icon(
                    item.isPositive ? Icons.trending_up : Icons.trending_down,
                    size: responsiveData.fontSize,
                    color: item.isPositive ? Colors.green : Colors.red,
                  ),
                  SizedBox(width: 4),
                  Text(
                    item.trend,
                    style: TextStyle(
                      fontSize: responsiveData.fontSize * 0.8,
                      color: item.isPositive ? Colors.green : Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductGridItem(BuildContext context, ProductGridItem item,
      ResponsiveData responsiveData) {
    return InkWell(
      onTap: () {
        // Handle product tap
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Tapped on ${item.name}')),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(responsiveData.borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8.0,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(responsiveData.borderRadius),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(responsiveData.borderRadius),
                      ),
                      child: _buildProductImage(item, responsiveData),
                    ),
                  ),
                  // Sale badge
                  if (item.isOnSale)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: responsiveData.itemPadding / 2,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'SALE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: responsiveData.fontSize * 0.6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  // Favorite button
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        size: responsiveData.fontSize,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Product Details
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(responsiveData.itemPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product name
                    Text(
                      item.name,
                      style: TextStyle(
                        fontSize: responsiveData.fontSize * 0.9,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: responsiveData.spacing / 4),

                    // Category
                    Text(
                      item.category,
                      style: TextStyle(
                        fontSize: responsiveData.fontSize * 0.7,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    SizedBox(height: responsiveData.spacing / 3),

                    // Rating
                    Row(
                      children: [
                        ...List.generate(5, (index) {
                          return Icon(
                            index < item.rating.floor()
                                ? Icons.star
                                : index < item.rating
                                    ? Icons.star_half
                                    : Icons.star_border,
                            size: responsiveData.fontSize * 0.8,
                            color: Colors.orange,
                          );
                        }),
                        SizedBox(width: 4),
                        Text(
                          '(${item.reviewCount})',
                          style: TextStyle(
                            fontSize: responsiveData.fontSize * 0.7,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    // Price
                    Row(
                      children: [
                        Text(
                          '\${item.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: responsiveData.fontSize,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade700,
                          ),
                        ),
                        if (item.originalPrice != null) ...[
                          SizedBox(width: 8),
                          Text(
                            '\${item.originalPrice!.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: responsiveData.fontSize * 0.8,
                              color: Colors.grey.shade500,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                        Spacer(),
                        // Add to cart button
                        InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('Added ${item.name} to cart')),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Icon(
                              Icons.add_shopping_cart,
                              size: responsiveData.fontSize,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductImage(
      ProductGridItem item, ResponsiveData responsiveData) {
    // Map of placeholder images to icons and colors
    final Map<String, Map<String, dynamic>> placeholderMap = {
      'placeholder_headphones': {
        'icon': Icons.headphones,
        'color': Colors.blue.shade400
      },
      'placeholder_phone_case': {
        'icon': Icons.phone_android,
        'color': Colors.green.shade400
      },
      'placeholder_speaker': {
        'icon': Icons.speaker,
        'color': Colors.red.shade400
      },
      'placeholder_stand': {
        'icon': Icons.laptop,
        'color': Colors.orange.shade400
      },
      'placeholder_mouse': {
        'icon': Icons.mouse,
        'color': Colors.purple.shade400
      },
      'placeholder_mug': {
        'icon': Icons.local_cafe,
        'color': Colors.brown.shade400
      },
      'placeholder_lamp': {
        'icon': Icons.lightbulb_outline,
        'color': Colors.yellow.shade700
      },
      'placeholder_notebook': {
        'icon': Icons.book,
        'color': Colors.indigo.shade400
      },
    };

    final placeholderData = placeholderMap[item.imageUrl];

    if (placeholderData != null) {
      // Use placeholder with icon
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              (placeholderData['color'] as Color).withOpacity(0.1),
              (placeholderData['color'] as Color).withOpacity(0.3),
            ],
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(responsiveData.itemPadding),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius:
                  BorderRadius.circular(responsiveData.borderRadius / 2),
            ),
            child: Icon(
              placeholderData['icon'] as IconData,
              size: responsiveData.iconSize * 1.5,
              color: placeholderData['color'] as Color,
            ),
          ),
        ),
      );
    } else {
      // Try to load as network image (for when you have real URLs)
      return Image.network(
        item.imageUrl,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.grey.shade200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image,
                    size: responsiveData.iconSize,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Image not found',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: responsiveData.fontSize * 0.7,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: Colors.grey.shade100,
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            ),
          );
        },
      );
    }
  }
}

// Flexible Responsive Grid Widget
class FlexibleResponsiveGrid<T> extends StatelessWidget {
  final List<T> items;
  final Widget Function(
      BuildContext context, T item, ResponsiveData responsiveData) itemBuilder;
  final double? childAspectRatio;

  const FlexibleResponsiveGrid({
    Key? key,
    required this.items,
    required this.itemBuilder,
    this.childAspectRatio,
  }) : super(key: key);

  // Method to determine grid columns based on screen width
  int _getGridColumns(double screenWidth) {
    if (screenWidth < 600) {
      return 2; // Mobile - 2 columns
    } else if (screenWidth < 900) {
      return 4; // Tablet - 4 columns
    } else if (screenWidth < 1200) {
      return 6; // Small desktop - 6 columns
    } else {
      return 8; // Large desktop - 8 columns
    }
  }

  // Method to get responsive data
  ResponsiveData _getResponsiveData(double screenWidth) {
    if (screenWidth < 600) {
      return ResponsiveData(
        fontSize: 14.0,
        iconSize: 32.0,
        spacing: 8.0,
        itemPadding: 12.0,
        borderRadius: 8.0,
      );
    } else if (screenWidth < 900) {
      return ResponsiveData(
        fontSize: 16.0,
        iconSize: 36.0,
        spacing: 12.0,
        itemPadding: 16.0,
        borderRadius: 10.0,
      );
    } else if (screenWidth < 1200) {
      return ResponsiveData(
        fontSize: 18.0,
        iconSize: 40.0,
        spacing: 16.0,
        itemPadding: 18.0,
        borderRadius: 12.0,
      );
    } else {
      return ResponsiveData(
        fontSize: 20.0,
        iconSize: 44.0,
        spacing: 20.0,
        itemPadding: 20.0,
        borderRadius: 14.0,
      );
    }
  }

  // Method to get adaptive padding around the grid
  EdgeInsets _getGridPadding(double screenWidth) {
    if (screenWidth < 600) {
      return EdgeInsets.all(12.0); // Mobile
    } else if (screenWidth < 900) {
      return EdgeInsets.all(16.0); // Tablet
    } else if (screenWidth < 1200) {
      return EdgeInsets.all(20.0); // Small desktop
    } else {
      return EdgeInsets.all(24.0); // Large desktop
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final columns = _getGridColumns(screenWidth);
        final responsiveData = _getResponsiveData(screenWidth);
        final padding = _getGridPadding(screenWidth);

        return Padding(
          padding: padding,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: responsiveData.spacing,
              mainAxisSpacing: responsiveData.spacing,
              childAspectRatio: childAspectRatio ?? 1.0,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return itemBuilder(context, items[index], responsiveData);
            },
          ),
        );
      },
    );
  }
}

// Data classes
class ResponsiveData {
  final double fontSize;
  final double iconSize;
  final double spacing;
  final double itemPadding;
  final double borderRadius;

  ResponsiveData({
    required this.fontSize,
    required this.iconSize,
    required this.spacing,
    required this.itemPadding,
    required this.borderRadius,
  });
}

enum GridItemType { text, icon, image, chart }

class GridItemData {
  final GridItemType type;
  final String title;
  final String? subtitle;
  final IconData? icon;

  GridItemData({
    required this.type,
    required this.title,
    this.subtitle,
    this.icon,
  });
}

class IconGridItem {
  final IconData icon;
  final String label;
  final Color color;

  IconGridItem({
    required this.icon,
    required this.label,
    required this.color,
  });
}

class CardGridItem {
  final String title;
  final String value;
  final String trend;
  final bool isPositive;

  CardGridItem({
    required this.title,
    required this.value,
    required this.trend,
    required this.isPositive,
  });
}

class ProductGridItem {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final double rating;
  final int reviewCount;
  final bool isOnSale;
  final String category;

  ProductGridItem({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.isOnSale,
    required this.category,
  });

  // Calculate discount percentage
  double get discountPercentage {
    if (originalPrice == null) return 0.0;
    return ((originalPrice! - price) / originalPrice!) * 100;
  }

  // Check if product has discount
  bool get hasDiscount => originalPrice != null && originalPrice! > price;
}

// Custom painter for simple chart
class SimpleChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.8);
    path.lineTo(size.width * 0.2, size.height * 0.6);
    path.lineTo(size.width * 0.4, size.height * 0.3);
    path.lineTo(size.width * 0.6, size.height * 0.4);
    path.lineTo(size.width * 0.8, size.height * 0.1);
    path.lineTo(size.width, size.height * 0.2);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// Extension for easy responsive access
extension ResponsiveExtension on BuildContext {
  bool get isMobile => MediaQuery.of(this).size.width < 600;
  bool get isTablet =>
      MediaQuery.of(this).size.width >= 600 &&
      MediaQuery.of(this).size.width < 900;
  bool get isDesktop => MediaQuery.of(this).size.width >= 900;

  ResponsiveData get responsiveData {
    final width = MediaQuery.of(this).size.width;
    if (width < 600) {
      return ResponsiveData(
          fontSize: 14.0,
          iconSize: 32.0,
          spacing: 8.0,
          itemPadding: 12.0,
          borderRadius: 8.0);
    } else if (width < 900) {
      return ResponsiveData(
          fontSize: 16.0,
          iconSize: 36.0,
          spacing: 12.0,
          itemPadding: 16.0,
          borderRadius: 10.0);
    } else if (width < 1200) {
      return ResponsiveData(
          fontSize: 18.0,
          iconSize: 40.0,
          spacing: 16.0,
          itemPadding: 18.0,
          borderRadius: 12.0);
    } else {
      return ResponsiveData(
          fontSize: 20.0,
          iconSize: 44.0,
          spacing: 20.0,
          itemPadding: 20.0,
          borderRadius: 14.0);
    }
  }
}
*/